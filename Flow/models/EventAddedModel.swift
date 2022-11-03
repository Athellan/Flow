//
//  SerieParamModel.swift
//  Flow
//
//  Created by Apprenant 63 on 02/11/2022.
//

import Foundation

class EventAdded: Identifiable, ObservableObject {
    let id = UUID()
    let title: String?
    let image: String?
    @Published var isSelected: Bool
    init(title: String?, image: String?, isSelected: Bool = false) {
        self.title = title
        self.image = image
        self.isSelected = isSelected
    }
}

