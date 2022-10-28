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
        ZStack{
            mapLayer
                .ignoresSafeArea()
            
            VStack(spacing: 00) {
                header
                    .padding()
                Spacer()
                locationsPreviewStack
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
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
        VStack(spacing: 00) {
            Button(action: vm.toggleLocationList) { Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                    .font(.system(size: 17))
                    .fontWeight(.bold)
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
    
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion, annotationItems: vm.locations, annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })
    }
    
    private var locationsPreviewStack: some View {
        ZStack {
            ForEach(vm.locations) { location in
                if vm.mapLocation == location {
                    LocationPreviewView(location: location)
                        .shadow(color: Color("secondaryColor").opacity(0.3), radius: 4, x: -3, y: 4)
                        .padding()
                    //     .transition(.asymmetric(
                    //                                    insertion: .move(edge: .trailing),
                    //                                    removal: .move(edge: .leading)))
                }
            }
        }
    }
}
