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
            
            Rectangle()
                .frame(width: 352, height: 84)
                .foregroundColor(Color("opacityColor"))
                .cornerRadius(10)
                
            
            HStack {
                Image("LSDA2T")
                    .resizable()
//                    .scaledToFill()
                    .frame(width: 92, height: 92)
                    .cornerRadius(10)
                    .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
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
            }
            .foregroundColor(Color("secondaryColor"))
            .frame(height: 55)
            .padding(.leading, 40)
            
            FavoriteButton(isFavorited: $isFavorited)
                .padding(.leading, 290)
                .padding(.top, 25)
            
        }.padding(.top, 7)
            .frame(width: 400)
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
