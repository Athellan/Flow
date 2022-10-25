//
//  profileCategoryPreference.swift
//  Flow
//
//  Created by Apprenant97 on 24/10/2022.
//

import SwiftUI
struct Picto: Identifiable {
    let image: String
    var id: String { image }
    
}

let movieCategories: [Picto] = [
    Picto(image: "history"),
    Picto(image: "horror"),
    Picto(image: "mystery"),
    Picto(image: "sci-fi")
]

struct profileCategoryPreference: View {
    var movieCategory : Picto

//    let movieCategories = ["history", "horror", "sci-fi", "mystery"]
    
    var body: some View {
        ZStack {
            Image("\(movieCategory.image)")
                .resizable()
                .frame(width: 72, height: 72)
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
        }
        .frame(width: 100, height: 100)
        .background(Color("highlightColor"))
        .cornerRadius(10)
        }
    }


struct profileCategoryPreference_Previews: PreviewProvider {
    static var previews: some View {
        profileCategoryPreference(movieCategory: movieCategories[0])
    }
}
