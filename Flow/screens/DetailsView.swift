//
//  DetailsView.swift
//  Flow
//
//  Created by apprenant50 on 21/10/2022.
//

import SwiftUI

struct DetailsView: View {
    var elementViewed = Film(title: "Le seigneur des anneaux", subname: "Les Deux Tours", cover: "doc.plaintext.fill", realisator: "Peter Jackson", description: "Le Seigneur des anneaux est une trilogie cinématographique américano-néo-zélandaise de fantasy réalisée par Peter Jackson et fondée sur le roman du même nom en trois volumes de J. R. R. Tolkien. Les films composant cette trilogie sont La Communauté de l'anneau, Les Deux Tours et Le Retour du roi.", rate: 3, plateform: "plateform?url tu veux dire?", actor: [Actor(name: "Thomas Holland", image: "sun.max.fill", role: "Cascadeur"), Actor(name: "Amel Bent", image: "sun.min.fill", role: "Chanteuse")], isFavorited: true, isSeen: true)
    
    var body: some View {
     
        NavigationView{
        ZStack{
            Color("primaryColor")
                .ignoresSafeArea()
            
            ScrollView{
            VStack{
                DetailsTitle(elementTitle: elementViewed.title, elementSubname: elementViewed.subname)
                
                DetailsImage(isFavorited: elementViewed.isFavorited, image: elementViewed.cover)
                
                DetailsBar(isSeen: true, date: "14 Oct. 2022", rate: 3).padding(8)
                
                HStack{
                    Text("À regarder sur")
                        .font(.system(size: 12))
                        .bold()
                    
                    Spacer()
                }
                HStack{
                    OpenSafari(url: "https://www.netflix.com/fr/", image: "Netflix")
                    OpenSafari(url: "https://www.disneyplus.com/fr-fr", image: "Disney+")
                }.padding(13)
                
                
                DetailsInfosWithTrailer(description: elementViewed.description, url: "https://www.disneyplus.com/fr-fr", urlName: "Trailer \(elementViewed.title) : \(elementViewed.subname)", durationClip: "4:33")
                
                HStack{
                    Text("Casting")
                        .bold()
                        .font(.system(size: 12))
                    Spacer()
                    NavigationLink(destination: {
                        CastingDetailsView()
                    }, label: {
                        Text("Voir tout")
                            .underline()
                            .font(.system(size: 12))
                    })
                    .navigationBarHidden(true)
                }
                HStack{
                    DetailCasting( actorName1: "Elijah Wood", personnage1: "Frondon Sacquet", actorName2: "Sean Astin", personnage2: "Samsagace Gameji", actorName3: "Dominic Monaghan", personnage3: "Meladoc Brandebouc", actorName4: "Orlando Bloom", personnage4: "Legolas", actorName5: "Viggo Mortensen", personnage5: "Aragom", actorName6: "Ian McKellen", personnage6: "Gandalf")
                
                }
                
            }.padding()
            }
        }.padding().ignoresSafeArea()
            
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
