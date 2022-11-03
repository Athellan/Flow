//
//  Location.swift
//  Flow
//
//  Created by Apprenant 63 on 25/10/2022.
//

import Foundation
import MapKit


struct Location: Identifiable, Equatable {
   
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imagesNames: [String]
    let link: String
    
    var id: String {
        name + cityName
    }
    
    // Equable
    // si on a 2 locations (lhs et rhs) on veut utiliser ca
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
