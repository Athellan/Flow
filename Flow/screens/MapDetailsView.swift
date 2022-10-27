//
//  MapDetailsView.swift
//  Flow
//
//  Created by apprenant50 on 24/10/2022.
//

import SwiftUI

struct MapDetailsView: View {
    
    let elementViewed2 = Event(title: "Le Louxor", description: "Tu l'as en tête la chanson ? « On adore regarder boire les gens, au bar du Louxooooooor. ». Après s'être installé tranquille sur les sièges rouges des balcons de la salle 1, on file boire un verre sur le rooftop du ciné. Là, on fume notre clope en surplombant Barbès avec vue sur Tati et le Sacré-Cœur, le mélange parfait entre cheap et chic. Un de nos spots préférés à Paris.", adress: "25 rue de Jesaisou, 75002 Paris", type: "Projection de film", image: "sun.max.fill")
    
    var body: some View {
        NavigationView{
        ZStack{
            Color("primaryColor")
                .ignoresSafeArea()
            
            ScrollView{
            VStack{
                DetailsTitle(elementTitle: elementViewed2.title, elementSubname: elementViewed2.adress)
                    .padding(4)
                
                DetailsImage(isFavorited: false, image: "goodGameImg")
                
                DetailsBar(isSeen: false, date: "14 Oct. 2022", rate: 5).padding(.bottom, 7)
                
                DetailsInfos(title: "Informations sur le lieu", description: elementViewed2.description)
                
                VStack(alignment: .leading){
                    
                    HStack{
                Text("Évènements à venir")
                    .bold()
                    .foregroundColor(Color("secondaryColor"))
                    .font(.system(size: 12))
                    .padding(.top, 30)
                    }
                    MapDetailsVideoButton(url: "", durationClip: "4:33", image: "urlImage", title: "Le Louxor", subname: "Gran Torino, Clint EastWood", date: "14 octobre 2022", hours: "14h")
                    MapDetailsVideoButton(url: "", durationClip: "4:33", image: "urlImage", title: "Le Louxor", subname: "Gran Torino, Clint EastWood", date: "14 octobre 2022", hours: "14h")
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
