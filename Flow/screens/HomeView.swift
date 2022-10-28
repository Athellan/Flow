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
        
        VStack(spacing : 00) {
            PickerView()
                .padding(.top, 30)
            
    }.background(Color("primaryColor"))
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(film: FilmHome(title: "", subTitle: "", opus: "", cover: ""))
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
                Text("A découvrir")
                    .tag(true)
                Text("Ce soir je regarde")
                    .tag(false)
            }.pickerStyle(SegmentedPickerStyle()).background(Color("primaryColor"))
            
            VStack{
                ScrollView {
                    
                    if isDiscoverMode == true {
                        miniatureFilm(film: FilmHome(title: "Le Seigneur des Anneaux", subTitle: "Les Deux Tours", opus: "VOL2", cover: ""))
                        miniatureSerie(serie: SerieHome(title: "Strangers Things", cover: "", episodeName: "Chapitre 1: La disparition", episodeNumber: 01, season: 01))
                    } else {
                        homeDetail()
                    }
                    
                    
                }
                
                .navigationBarBackButtonHidden(true)
                
                }
            }.background(Color("primaryColor"))
        }
    }
}

