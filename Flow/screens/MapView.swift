//
//  Map.swift
//  Flow
//
//  Created by Apprenant 63 on 24/10/2022.
//

import SwiftUI
import MapKit

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

extension CLLocationCoordinate2D: Identifiable {
    public var id: String {
        "\(latitude)-\(longitude)"
    }
}

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    
    @State private var search: String = ""
    
    let annotations = [
        City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275)),
        City(name: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508)),
        City(name: "Rome", coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5)),
        City(name: "Washington DC", coordinate: CLLocationCoordinate2D(latitude: 38.895111, longitude: -77.036667))
    ]
    
    var body: some View {
        ZStack {
            Color("primaryColor")
                .ignoresSafeArea()
                
                TextField("Recherche", text: $search)
                    .zIndex(1)
                    .frame(width: 350,height: 40)
                    .background(.white)
                    .cornerRadius(20)
                    .padding()
                    .offset(y: -290)
            
            VStack {
                Map(coordinateRegion: $region, annotationItems: annotations) {
                    MapMarker(coordinate: $0.coordinate)
                }
                .frame(width: 390, height: 650)
                .cornerRadius(30)
                
                
                
                HStack {
                    Button("Zoom -") {
                        region.span.latitudeDelta /= 0.9
                        region.span.longitudeDelta /= 0.9
                    }
                    Button("Zoom +") {
                        region.span.latitudeDelta *= 0.9
                        region.span.longitudeDelta *= 0.9
                    }
                }
            }
        }
    }
    
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
        }
    }
}
