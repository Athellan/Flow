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
    
    var body: some View {

        
        VStack(spacing : 00) {
            PickerView()
                .padding(.top, 30)
            
    }.background(Color("primaryColor"))
           
            
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct PickerView: View {

     @State private var isDiscoverMode = false

    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(red: 0/255, green: 70/255, blue: 67/255, alpha: 1) ], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(red: 0/255, green: 70/255, blue: 67/255, alpha: 1) ], for: .normal)
    }

    var body: some View {
        VStack{
            Picker(selection: $isDiscoverMode, label: EmptyView()) {
                Text("À découvrir")
                    .tag(true)
                Text("Ce soir je regarde")
                    .tag(false)
            }.pickerStyle(SegmentedPickerStyle()).background(Color("primaryColor"))
            
            VStack{
                ScrollView {
                    if isDiscoverMode == true {
                        NavigationLink(destination: DetailsView(film: FilmHome(title: "Le Seigneur des Anneaux", subTitle: "Les Deux Tours", opus: "VOL2", cover: "LSDA2T"), rate: .constant(1)),
                    label: {
                        miniatureTest(film: FilmHome(title: "Le Seigneur des Anneaux", subTitle: "Les Deux Tours", opus: "VOL2", cover: "LSDA2T"))
                    })
                        
//                            .onTapGesture {
//                                DetailsView(film: FilmHome(title: "", subTitle: "", opus: "", cover: ""))
//                            }
                        miniatureFilm(film: FilmHome(title: "Gran Torino", subTitle: "Walt Kowalski est un ancien..", opus: "VOL 1", cover: "grantorino"))
                        miniatureSerie(serie: SerieHome(title: "Wicked", cover: "wicked", episodeName: "Chapitre 1: La disparition      ", episodeNumber: 01, season: 01))
                        miniatureSerie(serie: SerieHome(title: "Breaking Bad", cover: "breakingbad", episodeName: "Chute libre                             ", episodeNumber: 01, season: 01))
                        miniatureSerie(serie: SerieHome(title: "Game of Throne", cover: "got", episodeName: "Winter is Coming                  ", episodeNumber: 01, season: 01))
                        miniatureSerie(serie: SerieHome(title: "Arcane", cover: "arcane", episodeName:"Welcome to the ...                ", episodeNumber: 01, season: 01))
                        miniatureSerie(serie: SerieHome(title: "Vikings", cover: "vikings", episodeName: "Valhala                                  ", episodeNumber: 01, season: 01))
                        miniatureFilm(film: FilmHome(title: "Coeurs Meurtris            ", subTitle: "Elizabeth Alen", opus: "VOL.", cover: "coeurmeurtri"))
                        miniatureFilm(film: FilmHome(title: "Gladiator", subTitle: "Ridley Scott                          ", opus: "VOL.", cover: "gladiator"))
                        miniatureFilm(film: FilmHome(title: "Le Roi Lion", subTitle: "Disney                                  ", opus: "VOL. 1", cover: "leroilion"))
                            .padding(.bottom, 20)
                       
                        
                    } else {
                        homeDetail(currentCard: Card(title: "Athena", subtitle: "Romain Gravas", image: "hxh"))
                    }
                    
                    
                }
                
                .navigationBarBackButtonHidden(true)
                
                }
            }.background(Color("primaryColor"))
        }
    }
}

