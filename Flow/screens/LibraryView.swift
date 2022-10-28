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
    let film : FilmHome
    let categories: [String] = ["Mes Favoris", "Mes Films", "Mes Séries", "Mes Évènements"]
    let cover: String = "seigneurDesAnneaux1"
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color("primaryColor")
                    .ignoresSafeArea()
                
                VStack{
                    
                    ScrollView(showsIndicators: false){
                        VStack {
                            SearchbarLibrary()
                        }
                        
                        
                    ForEach(categories, id: \.self) { idx in
                        ZStack{
                            gradientRectangle()
                                .frame(width: 352, height: 210)
                     
                            HStack{
                                VStack(alignment: .leading, spacing: 2){
                                    
                                    Section(header: Text(idx).bold().font(.system(size: 17)).foregroundColor(Color("secondaryColor")).padding(.leading, 15).padding(.vertical, 7)){
                                        
                                        
                                        ScrollView(.horizontal, showsIndicators: false, content: {
                                            
                                            HStack{
                                                ForEach(categories, id: \.self){ idx in
                                                    NavigationLink(destination: {
                                                        DetailsView(film: film)
                                                    }, label: {
                                                        Category(isFav: true, image: cover)
                                                    })
                                                }
                                            }.padding(.leading, 10)
                                        }).frame(width: 352)
                                        
                                    }
                                }
                            }
                        }
                    }
                }
            }
                   
                
            }.navigationBarHidden(true)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView(film: FilmHome(title: "Le seigneur des Toto", subTitle: "rbvdfvfvfe", opus: "fbfvbrtbr", cover: "seigneurDesAnneaux2"))
    }
}
