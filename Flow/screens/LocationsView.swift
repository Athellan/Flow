//
//  LocationsView.swift
//  Flow
//
//  Created by Apprenant 63 on 25/10/2022.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion)
                .ignoresSafeArea()
            VStack(spacing: 0) {
                
                header
                    .padding()
                
                Spacer()
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}


// header
extension LocationsView {
    private var header: some View {
        VStack {
            Button(action: vm.toggleLocationList) { Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(Color("secondaryColor"))
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapLocation)
                    .background(Color("opacityColor"))
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down.circle.fill")
                            .font(.headline)
                            .foregroundColor(Color("secondaryColor"))
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                    }
            }
            if vm.showLocationList {
                LocationsListView()
            }
        }
        .background(.thinMaterial)
        .cornerRadius(25)
        .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
    }
}
