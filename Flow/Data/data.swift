//
//  data.swift
//  Flow
//
//  Created by Apprenant 63 on 20/10/2022.
//
import Foundation
import MapKit

// TEST

struct Film: Identifiable {
    let id = UUID()
    let title: String
    let subname: String
    let cover: String
    let realisator: String
    let description: String
    let rate: Int
//    let plateform: String
//    let date: Date
//    let actor: [Actor]
    var isFavorited: Bool
    var isSeen: Bool

}

struct Serie {
    let title: String
    let cover: String
    let description: String
    let rate: Int
//    let plateform: String
    let date: Date
//    let actor: [Actor]
    let isFavorited: Bool
}

struct Episode {
    let title: String
    let episodName: String
    let episodeNumber: Int
    let season: Int
    let rate: Int
}

struct Actor: Identifiable {
    var id = UUID()
    let image: String
    let name: String
    let role: String
    
}

let actorComponents: [Actor] = [
    Actor(image: "elijahWood", name: "Elijah Wood" , role: "Frondon Sacquet"),
    Actor(image: "seanAstin", name: "Sean Astin" , role: "Samsagace Gamegie"),
    Actor(image: "orlandoBloom", name: "Orlando Bloom" , role: "Legolas"),
    Actor(image: "ianMcKellen", name: "Ian McKellen" , role: "Gandalf"),
    Actor(image: "dominicMonaghan", name: "Dominic Monaghan" , role: "Meriadoc Brandebouc"),
    Actor(image: "viggoMortensen", name: "Viggo Mortensen" , role: "Aragorn")
]


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

// Enum pour Category

struct FilmTest: Identifiable {
    let id = UUID()
    let title: String
    let poster: String
}
