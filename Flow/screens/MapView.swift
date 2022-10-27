//
//  Map.swift
//  Flow
//
//  Created by Apprenant 63 on 24/10/2022.
//

import SwiftUI
import MapKit


extension CLLocationCoordinate2D: Identifiable {
    public var id: String {
        "\(latitude)-\(longitude)"
    }
}

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    
    @State private var search: String = ""
    
    
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
                Map(
                   coordinateRegion: $region,
                   interactionModes: MapInteractionModes.all,
                   showsUserLocation: true,
                   annotationItems: MapLocations,
                   annotationContent: { location in
                       MapAnnotation(
                          coordinate: location.coordinate,
                          content: {
                              Button {
                              } label: {
                                  Image(systemName: "pin.circle.fill")
                                      .foregroundColor(.red)
                              }
                             Text(location.name)
                          }
                       )
                   }
                )
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
    
    func openMap() {
        
    }
    
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
        }
    }
}
