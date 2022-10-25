//
//  data.swift
//  Flow
//
//  Created by Apprenant 63 on 20/10/2022.
//
import Foundation
import MapKit


struct Film: Identifiable {
    let id = UUID()
    let title: String
    let subname: String
    let cover: String
    let realisator: String
    let description: String
    let rate: Int
    let plateform: String
  //  let date: Date
    let actor: [Actor]
    var isFavorited: Bool
    var isSeen: Bool

}

struct Serie {
    let title: String
    let cover: String
    let description: String
    let rate: Int
    let plateform: String
    let date: Date
    let actor: [Actor]
    let isFavorited: Bool
}

struct Episode {
    let title: String
    let episodName: String
    let episodeNumber: Int
    let season: Int
    let rate: Int
}

struct Actor {
    let name: String
    let image: String
    let role: String
}

struct Venue {
    let name: String
    let adress: String
    let rate: Int
    let nextEvent: String
    let event: [Event]
}

struct Event {
    let title: String
    let description: String
    let adress: String
    let type: String
    let image: String
   // let date: Date
}

struct MapLocation: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

let MapLocations = [
    MapLocation(name: "Le Louxor", coordinate: CLLocationCoordinate2D(latitude: 48.88396599940806, longitude: 2.3497290539689524)),
    MapLocation(name: "Le Jardin Caché", coordinate: CLLocationCoordinate2D(latitude: 48.85917580900435, longitude: 2.2719680471923738)),
    MapLocation(name: "Le Bistrot du cinéma", coordinate: CLLocationCoordinate2D(latitude: 48.88485815296238, longitude: 2.3268638)),
    MapLocation(name: "Le cinéma du Panthéon", coordinate: CLLocationCoordinate2D(latitude: 48.85012542913354, longitude: 2.3434033858495242))
]
// Enum pour Category
