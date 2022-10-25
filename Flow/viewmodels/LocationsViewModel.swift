//
//  LocationsViewModel.swift
//  Flow
//
//  Created by Apprenant 63 on 25/10/2022.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    // toutes mes locations chargées
    @Published var locations: [Location]
    
    // pour ma location sur la map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    // region actuelle sur la map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // montrer la liste des locations
    @Published var showLocationList: Bool = false
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
    
    func toggleLocationList() {
        withAnimation(.easeInOut) {
            showLocationList = !showLocationList
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationList = false
        }
    }
    
    func nextButtonPressed() {
        // je dois trouver mon index actuel sur le tableau de Location
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation }) else {
            print("Je ne trouve pas l'index actuel")
            return
        }
        
        // Vérification si currentIndex est valide
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // Le prochain index est pas valide, restart
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        // le prochain index est valide
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}

