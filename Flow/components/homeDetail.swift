//
//  homeDetail.swift
//  Flow
//
//  Created by Apprenant 63 on 21/10/2022.
//

import SwiftUI

struct homeDetail: View {
    @State var currentCard:Card
    
    let rows = [
            GridItem(.fixed(47)),
            GridItem(.fixed(47))
        ]
    
    var shows: [Card] = [
        Card(title: "", subtitle: "", image: "dexter"),
        Card(title: "Dexter", subtitle: "Saison 1", image: "breakingbad"),
        Card(title: "Breaking Bad", subtitle: "Saison1", image: "hxh"),
        Card(title: "Hunter X Hunter", subtitle: "Saison 1", image: "vikings"),
        Card(title: "Vikings", subtitle: "Saison 1", image: "sherlock"),
        Card(title: "Sherlock", subtitle: "Saison 1", image: "peakyblinders"),
        Card(title: "Peaky Blinders", subtitle: "Saison 1", image: "arcane"),
        Card(title: "Arcane", subtitle: "Saison 1", image: "queensgambit"),
        Card(title: "Le Jeu de Dames", subtitle: "Mini Série", image: "got"),
        Card(title: "Game of Throne", subtitle: "Saison 1", image: "grantorino"),
        Card(title: "Gran Torino", subtitle: "Clint Eastwood", image: "athena")
    ]
   
    var body: some View {
        ZStack {
            Color("primaryColor")
                .ignoresSafeArea()
            VStack {
                
                titleComponentDynamic(film: currentCard)
                    
                ZStack {
                    ForEach(shows) {show in CardView(show: show, currentCard: $currentCard)
                    }
                    
                    HStack {
                        Image(systemName: "multiply.circle.fill")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                            .foregroundColor(Color("titleBackgroundColor"))
                        Image(systemName: "greaterthan.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color("titleBackgroundColor"))
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                            .foregroundColor(Color("titleBackgroundColor"))
                    }.padding(.top, 370)
                }
                
                VStack{
                    LazyHGrid(rows: rows, alignment: .top) {
                        ForEach(plateformLogos) { plateformLogo in
                            plateFormButton(plateformLogo: plateformLogo)
                        }
                    }.frame(height: 47)
                }.padding(.top, 60)

            }.padding(.top, 20)
        }
    }
}

struct homeDetail_Previews: PreviewProvider {
    static var previews: some View {
        homeDetail(currentCard: Card(title: "Athena", subtitle: "Romain Gravas", image: "hxh"))
    }
}
