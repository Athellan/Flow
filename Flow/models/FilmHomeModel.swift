//
//  filmsViewModel.swift
//  Flow
//
//  Created by Apprenant 63 on 20/10/2022.
//

import Foundation

struct FilmHome: Identifiable {
    let id = UUID()
    let title: String
    let subTitle: String
    let opus: String
    let cover: String
    let isLibraryAdded: Bool = false
}

