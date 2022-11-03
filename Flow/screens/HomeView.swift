//
//  HomeView.swift
//  Flow
//
//  Created by Apprenant 63 on 20/10/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isDiscoverMode = false
    @State private var isFavorited = false
    
    let film : FilmHome
    
    var body: some View {
        VStack (spacing : 00) {
            Picker(selection: $isDiscoverMode, label: EmptyView()) {
                Text("A découvrir")
                    .background(Color("primaryColor"))
                    .foregroundColor(Color("secondaryColor"))
                    .tag(true)
                Text("Ce soir je regarde")
                    .tag(false)
                    .foregroundColor(Color("secondaryColor"))
            }.pickerStyle(SegmentedPickerStyle())                    .padding(.top, 30)
               
                
            VStack {
                ScrollView {
                    if isDiscoverMode == true {
                        miniatureFilm(film: FilmHome(title: "Le Seigneur des Anneaux", subTitle: "Les Deux Tours", opus: "VOL2", cover: "LSDA2T"))
                        miniatureSerie(serie: SerieHome(title: "You", cover: "younetflix", episodeName: "Episode 1: Obsession       ", episodeNumber: 01, season: 01))
                        miniatureSerie(serie: SerieHome(title: "Stranger Things", cover: "ST", episodeName: "Chapitre 1: La disparition", episodeNumber: 01, season: 01))
                        miniatureFilm(film: FilmHome(title: "Gran Torino", subTitle: "Walt Kowalski est un ancien..", opus: "VOL 1", cover: "grantorino"))
                        miniatureSerie(serie: SerieHome(title: "Wicked", cover: "wicked", episodeName: "Chapitre 1: La disparition", episodeNumber: 01, season: 01))
                        miniatureSerie(serie: SerieHome(title: "Breaking Bad", cover: "breakingbad", episodeName: "Chute libre                      ", episodeNumber: 01, season: 01))
                        miniatureSerie(serie: SerieHome(title: "Game of Throne", cover: "got", episodeName: "Winter is Coming          ", episodeNumber: 01, season: 01))
                        miniatureSerie(serie: SerieHome(title: "Arcane", cover: "arcane", episodeName:"Welcome to the ...        ", episodeNumber: 01, season: 01))
                        
                    } else {
                        homeDetail(currentCard: Card(title: "Athena", subtitle: "Romain Gravas", image: "hxh"))
                    }
                    
                    
                }.background(Color("primaryColor"))
                    
                
            }
        }.background(Color("primaryColor"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(film: FilmHome(title: "Le Seigneur des Anneaux", subTitle: "Les Deux Tours", opus: "VOL2", cover: ""))
    }
}
