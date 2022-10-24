//
//  LibraryView.swift
//  Flow
//
//  Created by apprenant50 on 21/10/2022.
//

import SwiftUI

struct LibraryView: View {
    
    @State var searching: String = ""
    @State var isFav: Bool = true
    
    let categories: [String] = ["Mes Favoris", "Mes Films", "Mes Séries"]
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color("primaryColor")
                    .ignoresSafeArea()
                
                VStack{
                    SearchbarLibrary()
                    ForEach(categories, id: \.self) { idx in
                        ZStack{
                            gradientRectangle()
                     
                            HStack{
                                VStack{
                                    Section(header: Text(idx).bold().font(.system(size: 17))){
                                        ScrollView(.horizontal, showsIndicators: false, content: {
                                            Category(isFav: false)
                                        })
                                        
                                    }
                                }
                            }
                        }
                    }
                    
                }.padding(10)
                
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
