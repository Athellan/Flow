//
//  miniatureFilm.swift
//  Flow
//
//  Created by Apprenant 63 on 20/10/2022.
//

import SwiftUI

struct miniatureFilm: View {
    
    let film : FilmHome
    
    @State private var isFavorited = false
    
    var body: some View {
        ZStack {
            HStack {
                Image("LSDA2T")
                    .resizable()
                    .frame(width: 92, height: 92)
                    .cornerRadius(10)
            }
            .padding(.leading, -180)
            HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    Text(film.title.uppercased())
                        .font(.system(size: 14))
                    Text(film.opus)
                        .font(.system(size: 18))
                        .bold()
                    Text(film.subTitle)
                        .font(.system(size: 14))
                }
                FavoriteButton(isFavorited: $isFavorited)
            }
            .frame(width: 280, height: 84)
            .background(Color("opacityColor"))
            .cornerRadius(10)
            .padding(.leading, 80)
        }
    }
}

struct FavoriteButton: View {
    @Binding var isFavorited: Bool
    var body: some View {
        Button {
            isFavorited.toggle()
        } label: {
            Image(systemName: isFavorited ? "checkmark.circle.fill" : "checkmark.circle")
                .font(.largeTitle)
        }
    }
}


struct miniatureFilm_Previews: PreviewProvider {
    static var previews: some View {
        miniatureFilm(film: FilmHome(title: "Le Seigneur des Anneaux", subTitle: "Les Deux Tours", opus: "VOL2", cover: ""))
    }
}
