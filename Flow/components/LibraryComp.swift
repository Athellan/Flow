//
//  Category.swift
//  Flow
//
//  Created by apprenant50 on 21/10/2022.
//

import SwiftUI

struct SearchbarLibrary: View {
    
    @State var searching: String = ""
    
    var body: some View {
        VStack{
            Text("Ma Bibliothèque")
                .font(.system(size: 18))
                .foregroundColor(Color("secondaryColor"))
                .padding(.top, 50)
                .padding(.bottom, 20)
                
            ZStack{
                Rectangle()
                    .frame(width: 309, height: 26)
                    .cornerRadius(25)
                    .foregroundColor(Color("titleBackgroundColor"))
                    .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                
                HStack {
                    Image(systemName: "magnifyingglass.circle")
                        .foregroundColor(Color("secondaryColor"))
                    TextField("Que cherchez-vous ?", text: $searching)
                        .font(.system(size: 14))
                        .foregroundColor(Color("secondaryColor"))
                        .frame(width: 270)
                }
            }
                
            
            Button(action: {
                //
            }, label: {
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }).padding(40)
        }
    }
}


struct Category: View {
    let isFav: Bool
    let image: String
    var body: some View {
        VStack{
            ZStack{
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 100, height: 154)
                    .shadow(color: Color("secondaryColor").opacity(0.7), radius: 2, x: -3, y: 4)
                
                
                if(isFav){
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 27))
                        .foregroundColor(Color("secondaryColor"))
                        .padding(.top, 100)
                        .padding(.leading, 60)
                    
                }else{
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 27))
                        .foregroundColor(Color("titleBackgroundColor"))
                        .padding(.top, 100)
                        .padding(.leading, 60)
                }
            }
        }.frame(height: 160)
    }
}

struct LibraryComp_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView(film: FilmHome(title: "Le seigneur des Toto", subTitle: "Les Deux Tours", opus: "fbfvbrtbr", cover: "seigneurDesAnneaux2"))
    }
}
