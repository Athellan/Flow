//
//  DetailsView.swift
//  Flow
//
//  Created by apprenant50 on 21/10/2022.
//

import SwiftUI

struct DetailsView: View {
    let rows = [
        GridItem(.fixed(47)),
        GridItem(.fixed(47))
    ]
    
    var elementViewed = Film(title: "Le seigneur des anneaux", subname: "Les Deux Tours", cover: "seigneurDesAnneaux2", realisator: "Peter Jackson", description: "Le Seigneur des anneaux est une trilogie cinématographique américano-néo-zélandaise de fantasy réalisée par Peter Jackson et fondée sur le roman du même nom en trois volumes de J. R. R. Tolkien. Les films composant cette trilogie sont La Communauté de l'anneau, Les Deux Tours et Le Retour du roi.", rate: 3, isFavorited: true, isSeen: true)
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color("primaryColor")
                    .ignoresSafeArea()
                
                ScrollView(showsIndicators: false){
                    VStack{
                        DetailsTitle(elementTitle: elementViewed.title, elementSubname: elementViewed.subname)
                            .padding(.top, 40)
                        
                        DetailsImage(isFavorited: elementViewed.isFavorited, image: elementViewed.cover)
                        
                        DetailsBar(isSeen: true, date: "14 Oct. 2022", rate: 3)
                            .padding(.bottom, 7)
                        
                        VStack(alignment: .leading){
                            Text("À regarder sur")
                                .font(.system(size: 12))
                                .bold()
                                .foregroundColor(Color("secondaryColor"))
                                .padding(.leading, 10)
                                .padding(.bottom, 20)
                            
                            
                            HStack {
                                LazyHGrid(rows: rows, alignment: .top) {
                                    ForEach(plateformLogos) { plateformLogo in
                                        plateFormButton(plateformLogo: plateformLogo)
                                    }
                                }.frame(width: 352, height: 47)
                                
                                
                            }.padding(.top, 20)
                        }
                        
                        
                        VStack {
                            DetailsInfosWithTrailer(image: "videoLSDA",description: elementViewed.description, url: "https://www.disneyplus.com/fr-fr", urlName: "BA : \(elementViewed.title) : \(elementViewed.subname)", durationClip: "4:33")
                        }.padding(.top, 50)
                        
                        
                        //                    .navigationBarHidden(true)
                        
                        
                        HStack{
                            actorInfoGrid(gradientRectangleTitle2: "Casting")
                            
                        }.padding(.top, 20)
                            .padding(.bottom, 40)
                    }
                }
            }
        }
    }
}
struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
