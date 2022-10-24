//
//  MapDetailsView.swift
//  Flow
//
//  Created by apprenant50 on 24/10/2022.
//

import SwiftUI

struct MapDetailsView: View {
    var elementViewed = Film(title: "Le seigneur des anneaux", subname: "Les Deux Tours", cover: "doc.plaintext.fill", realisator: "Peter Jackson", description: "Le Seigneur des anneaux est une trilogie cinématographique américano-néo-zélandaise de fantasy réalisée par Peter Jackson et fondée sur le roman du même nom en trois volumes de J. R. R. Tolkien. Les films composant cette trilogie sont La Communauté de l'anneau, Les Deux Tours et Le Retour du roi.", rate: 3, plateform: "plateform?url tu veux dire?", actor: [Actor(name: "Thomas Holland", image: "sun.max.fill", role: "Cascadeur"), Actor(name: "Amel Bent", image: "sun.min.fill", role: "Chanteuse")], isFavorited: true, isSeen: true)
    let elementViewed2 = Event(title: "Le Louxor", description: "Tu l'as en tête la chanson ? « On adore regarder boire les gens, au bar du Louxooooooor. ». Après s'être installé tranquille sur les sièges rouges des balcons de la salle 1, on file boire un verre sur le rooftop du ciné. Là, on fume notre clope en surplombant Barbès avec vue sur Tati et le Sacré-Cœur, le mélange parfait entre cheap et chic. Un de nos spots préférés à Paris.", adress: "25 rue de Jesaisou, 75002 Paris", type: "Projection de film", image: "sun.max.fill")
    var body: some View {
        NavigationView{
        ZStack{
            Color("primaryColor")
                .ignoresSafeArea()
            
            ScrollView{
            VStack{
                DetailsTitle(elementTitle: elementViewed2.title, elementSubname: elementViewed2.adress)
                
                DetailsImage(isFavorited: false, image: "sun.max.fill")
                
                DetailsBar(isSeen: false, date: "14 Oct. 2022", rate: 5).padding(8)
                
                HStack{
                    Text("À regarder sur")
                        .font(.system(size: 12))
                        .bold()
                        .foregroundColor(Color("secondaryColor"))
                    
                    Spacer()
                }
                
                
                DetailsInfos(description: elementViewed2.description)
                
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

struct MapDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MapDetailsView()
    }
}
