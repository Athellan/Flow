//
//  serieViewModel.swift
//  Flow
//
//  Created by Apprenant 63 on 20/10/2022.
//

import Foundation

struct SerieHome: Identifiable {
    let id = UUID()
    let title: String
    let cover: String
    let episodeName: String
    let episodeNumber: Int
    let season: Int
    let isLibraryAdded: Bool = false
}

