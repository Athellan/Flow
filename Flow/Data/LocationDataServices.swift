//
//  LocationDataServices.swift
//  Flow
//
//  Created by Apprenant 63 on 25/10/2022.
//

import Foundation
import MapKit

class LocationsDataService {

    static let locations: [Location] = [
        Location(
            name: "Le Louxor",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.88395188913936, longitude: 2.3496432232853004),
            description: "Tu l'as en tête la chanson ? « On adore regarder boire les gens, au bar du Louxooooooor. ». Après s'être installé tranquille sur les sièges rouges des balcons de la salle 1, on file boire un verre sur le rooftop du ciné. Là, on fume notre clope en surplombant Barbès avec vue sur Tati et le Sacré-Cœur, le mélange parfait entre cheap et chic. Un de nos spots préférés à Paris.",
            imagesNames: [
                "image-louxor-1",
                "image-louxor-2",
                "image-louxor-3",
            ],
            link: "https://www.cinemalouxor.fr/"),
        Location(
            name: "Le Reset Bar",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.863651920743024, longitude: 2.3485082460288194),
            description: "Idéal pour passer une soirée calme ou animée selon l'ambiance recherchée, le Reset Bar ouvre ses portes pour organiser vos soirées d'entreprise (afterwork atypique, pot de départ, événement corporate...) Mais également vos soirées d'anniversaire et verres entre amis.",
            imagesNames: [
                "image-bar1-1",
                "image-bar1-2",
                "image-bar1-3",
            ],
            link: "https://www.reset.bar/"),
        Location(
            name: "L'Hybride",
            cityName: "Lille",
            coordinates: CLLocationCoordinate2D(latitude: 50.62630096992986, longitude: 3.06604381534294),
            description: "Lieu culturel dédié à l’audiovisuel, L’hybride a ouvert ses portes en 2007 dans le quartier Jean-Baptiste Lebas à Lille. Il propose 3 soirs par semaine une programmation dédiée au court métrage et aux formes audiovisuelles indépendantes : fiction, animation, expérimental, documentaire, transdisciplinaire.",
            imagesNames: [
                "image-barlille-1",
                "image-barlille-2",
                "image-barlille-3",
            ],
            link: "https://lhybride.org/"),
        Location(
            name: "Aquarium Ciné Café",
            cityName: "Lyon",
            coordinates: CLLocationCoordinate2D(latitude: 45.77719390323658, longitude: 4.83154983068588),
            description: "Aquarium Ciné-Café est une association qui cherche à sa manière à renouveler la salle de cinéma en continuant à faire du 7ème art une expérience collective ! Aquarium regroupe en un seul et même lieu : 🎞 Une salle de projection pour explorer 120 ans de cinéma entre fiction, documentaire, court-métrage et clip. 📀 Un vidéo club avec plus de 10 000 films et séries disponibles à la location et des nouveautés toutes les semaines. 🎥 Des ateliers de réalisation, des stages vacances et des formations audiovisuelles.",
            imagesNames: [
                "image-barlyon-1",
                "image-barlyon-2",
                "image-barlyon-3"
            ],
            link: "https://aquarium-cine-cafe.fr/"),
        Location(
            name: "Le Louvre",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            imagesNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            name: "Chez Moi",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imagesNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
    ]
    
}

