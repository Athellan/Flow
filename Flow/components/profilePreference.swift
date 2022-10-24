//
//  profilePreference.swift
//  Flow
//
//  Created by Apprenant97 on 24/10/2022.
//

import SwiftUI

struct profilePreference: View {
    var movieCategory: [String] = ["history", "horror", "sci-fi", "mystery"]
//    = ["history", "horror", "sci-fi", "mystery"]
    var body: some View {
        HStack {
            Button {
                // fonction bouton = ajouter préférence style film
            } label: {
                Image(systemName: "plus.circle.fill")
                    .frame(width: 100, height: 100)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color("highlightColor"))
                    .cornerRadius(10)
            }
            
            VStack {
                Image("\(movieCategory)")
                    .resizable()
                    .frame(width: 72, height: 72)
                    .background(Color("highlightColor"))
                    
            }
            .frame(width: 100, height: 100)
            .background(Color("highlightColor"))
            .cornerRadius(10)
            .padding(.leading, 5)
            
            
        }
    }
}

struct profilePreference_Previews: PreviewProvider {
    static var previews: some View {
        profilePreference(movieCategory: ["horror"])
    }
}
