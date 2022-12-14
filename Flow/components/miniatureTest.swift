//
//  miniatureTest.swift
//  Flow
//
//  Created by Apprenant97 on 03/11/2022.
//

import SwiftUI

struct miniatureTest: View {
    let film : FilmHome
    @State private var isFavorited = false
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .frame(width: 352, height: 84)
                .foregroundColor(Color("opacityColor"))
                .cornerRadius(10)
                
            
            HStack {
                Image(film.cover)
                    .resizable()
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
            
            FavoriteButton3(isFavorited: $isFavorited)
                .padding(.leading, 290)
                .padding(.top, 25)
            
        }.padding(.top, 7)
            .frame(width: 400)
    }
}

struct FavoriteButton3: View {
    @Binding var isFavorited: Bool
    var body: some View {
        Button {
            isFavorited.toggle()
        } label: {
            Image(systemName: isFavorited ? "checkmark.circle.fill" : "checkmark.circle")
                .font(.largeTitle)
                .foregroundColor(Color("titleBackgroundColor"))
        }
    }
}


struct miniatureTest_Previews: PreviewProvider {
    static var previews: some View {
        miniatureTest(film: FilmHome(title: "Le Seigneur des Anneaux", subTitle: "Les Deux Tours", opus: "VOL2", cover: "LSDA2T"))
    }
}
