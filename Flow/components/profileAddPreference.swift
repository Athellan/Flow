//
//  profileAddPreference.swift
//  Flow
//
//  Created by Apprenant97 on 24/10/2022.
//

import SwiftUI

struct profileAddPreference: View {
    var body: some View {
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
    }
}

struct profileAddPreference_Previews: PreviewProvider {
    static var previews: some View {
        profileAddPreference()
    }
}
