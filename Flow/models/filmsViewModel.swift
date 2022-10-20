//
//  filmsViewModel.swift
//  Flow
//
//  Created by Apprenant 63 on 20/10/2022.
//

import Foundation

class FilmViewModel: ObservableObject {
    @Published var films: [Film] = [
    Film(title: "Le Seigneur des Anneaux", subname: "Les Deux Tours", cover: "LSDA2T", realisator: "", description: "", rate: 1, plateform: "", isFavorited: true)
    ]
}
