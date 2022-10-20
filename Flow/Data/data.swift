//
//  data.swift
//  Flow
//
//  Created by Apprenant 63 on 20/10/2022.
//
import Foundation


struct Film {
    let title: String
    let subname: String
    let cover: String
    let realisator: String
    let description: String
    let rate: Int
    let plateform: String
//    let date: Date
//    let actor: [Actor]
    let isFavorited: Bool
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
    let type: String
    let image: String
    let date: Date
}

// Enum pour Category
