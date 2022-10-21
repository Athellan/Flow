//
//  miniatureSerie.swift
//  Flow
//
//  Created by Apprenant 63 on 20/10/2022.
//

import SwiftUI

struct miniatureSerie: View {
    
    let serie : SerieHome
    @State private var isFavorited = false
    
    var body: some View {
        ZStack {
            HStack {
                Image("ST")
                    .resizable()
                    .frame(width: 92, height: 92)
                    .cornerRadius(10)
            }
            .padding(.leading, -180)
            HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    Text(serie.title.uppercased())
                        .font(.system(size: 14))
                    HStack {
                        Text("S0\(serie.season)  |")
                        Text("E0\(serie.episodeNumber) ")
                    }
                    .font(.system(size: 18))
                    .bold()
                    Text(serie.episodeName)
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


struct miniatureSerie_Previews: PreviewProvider {
    static var previews: some View {
        miniatureSerie(serie: SerieHome(title: "Strangers Things", cover: "", episodeName: "Chapitre 1: La disparition", episodeNumber: 01, season: 01))
    }
}
