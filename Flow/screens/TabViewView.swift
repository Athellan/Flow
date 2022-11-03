//
//  TabViewView.swift
//  Flow
//
//  Created by Apprenant 63 on 26/10/2022.
//

import SwiftUI

struct TabViewView: View {
    
    init() {
    UITabBar.appearance().backgroundColor = UIColor(Color("titleBackgroundColor"))
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("secondaryColor"))
    }
    
    @State var selectedTab: Int = 0

    var body: some View {
         //if connexion == 0 == true
        //else
        TabView(selection: $selectedTab) {
            
            HomeView(film: FilmHome(title: "", subTitle: "", opus: "", cover: ""))
                .tabItem {
                    Label("À découvrir", systemImage: "binoculars.fill")
                }
                .tag(0)
            
            ProfileView()
                .tabItem {
                    Label("Profil", systemImage: "person.fill")
                }
                .tag(1)
            
            LibraryView(film: FilmHome(title: "Le seigneur des Toto", subTitle: "rbvdfvfvfe", opus: "fbfvbrtbr", cover: "seigneurDesAnneaux2"))
                .tabItem {
                    Label("Bibliothèque", systemImage: "star.bubble.fill")
                }
                .tag(2)
            
            LocationsView()
                .tabItem {
                    Label("Carte", systemImage: "map.fill")
//                    Image(systemName: "map.fill")
//                    Text("Carte")
                }
                .tag(3)
            
        }
        .accentColor(Color("primaryColor"))
        
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
        .environmentObject(LocationsViewModel())
    }
}


