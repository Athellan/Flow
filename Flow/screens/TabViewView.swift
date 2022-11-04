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
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("primaryColor"))
    }
    
    @State var selectedTab: Int = 0

    var body: some View {
        VStack{
        TabView(selection: $selectedTab) {
            
            HomeView()
                .tabItem {
                    Label("À découvrir", systemImage: "binoculars.fill")
                }
                .tag(0)
            
            ProfileView()
                .tabItem {
                    Label("Profil", systemImage: "person.fill")
                }
                .tag(1)

            LibraryView()
                .tabItem {
                    Label("Bibliothèque", systemImage: "star.bubble.fill")
                }
                .tag(2)
            
            LocationsView()
                .tabItem {
                    Label("Carte", systemImage: "map.fill")
                }
                .tag(3)
            
                .accentColor(Color("primaryColor"))
        }

        }.navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)

    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
        .environmentObject(LocationsViewModel())
    }
}


