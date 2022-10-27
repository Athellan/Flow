//
//  LocationPreviewView.swift
//  Flow
//
//  Created by Apprenant 63 on 25/10/2022.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing:0) {
            VStack(alignment: .leading, spacing: 16) {
                imageSection
                titleSection
            }

            VStack(spacing: 8) {
                learnMoreButton
                nextButton
            }
        }
        .padding(20)
        .background(
        RoundedRectangle(cornerRadius: 10)
//            .fill(Color("opacityColor"))
            .fill(.ultraThinMaterial)
            .offset(y: 65)
        )
        .cornerRadius(10)
        .padding(6)
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        LocationPreviewView(location: LocationsDataService.locations.first!)
            .environmentObject(LocationsViewModel())
    }
}

extension LocationPreviewView {
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imagesNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(4)
        .background(Color("opacityColor"))
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color("secondaryColor"))
            Text(location.cityName)
                .font(.subheadline)
                .foregroundColor(Color("secondaryColor"))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View {
        Button {
            vm.sheetLocation = location
        } label: {
            Text("Voir plus")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .padding(8)
        .foregroundColor(Color("secondaryColor"))
        .background(Color("opacityColor"))
        .cornerRadius(10)
    }
    
    private var nextButton: some View {
        Button {
            vm.nextButtonPressed()
        } label: {
            Text("Suivant")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .padding(8)
        .foregroundColor(Color("secondaryColor"))
        .background(Color("opacityColor"))
        .cornerRadius(10)
    }
}



