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
         
        TabView(selection: $selectedTab) {
            HomeView(film: FilmHome(title: "", subTitle: "", opus: "", cover: ""))
                .tabItem {
                    Image(systemName: "sparkles.tv.fill")
                    Text("Suggestions")
                }
                .tag(0)
            Profile()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profil")
                }
                .tag(1)
            LibraryView()
                .tabItem {
                    Image(systemName: "star.bubble.fill")
                    Text("Bibliothèque")
                }
                .tag(2)
            testView()
            //LocationsView()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Carte")
                }
                .tag(3)
        }
        .accentColor(Color("primaryColor"))
        .padding(.horizontal, -4)
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
    }
}


