//
//  LibraryView.swift
//  Flow
//
//  Created by apprenant50 on 21/10/2022.
//

import SwiftUI

struct LibraryView: View {
    
    @State var searchText: String = ""
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color("primaryColor")
                    .ignoresSafeArea()
                VStack{
                    ScrollView {
                        SearchbarLibrary()
                        FavoriteScroll()
                            .padding(10)
                        FilmScroll()
                            .padding(10)
                        SerieScroll()
                            .padding(10)
                        EventScroll()
                            .padding(10)
                    }
                }.navigationBarHidden(true)
            }
        }
    }
    
    struct LibraryView_Previews: PreviewProvider {
        static var previews: some View {
            LibraryView()
        }
    }
}
