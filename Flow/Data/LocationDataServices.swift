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
            name: "Le Dernier Bar",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.85808596574914, longitude: 2.346362723799845),
            description: "Le Dernier Bar avant la Fin du Monde est le premier espace d’expression des cultures de l’imaginaire en plein cœur de Paris, à deux pas du Théâtre du Châtelet. C’est un bar de plus de 400 m² pensé par des passionnés de science-fiction, de fantasy, de manga, de séries télévisées, de cinéma et de littérature fantastique. On peut s’y installer pour lire, partager un verre, jouer, se restaurer, partager sa passion pour les cultures de l’imaginaire.",
            imagesNames: [
                "image-barparis-1",
                "image-barparis-2",
                "image-barparis-3",
            ],
            link: "TODO"),
        Location(
            name: "Le Loufoque",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.85178369155914, longitude: 2.3468101562972454),
            description: "Son nom annonce bien la couleur. Le Loufoque – Comptoir Ludique est l’endroit rêvé pour tous les amateurs de jeux de société… Mais pas que ! La maison excelle dans l’art du cocktail et des petits snacks faits maison à grignoter. Un burger, un cocktail et un bon jeu, voilà le maître mot du Loufoque.",
            imagesNames: [
                "image-barparis2-1",
                "image-barparis2-2",
                "image-barparis2-3",
            ],
            link: ""),
    ]
    
}

