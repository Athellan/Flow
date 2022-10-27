//
//  homeDetail.swift
//  Flow
//
//  Created by Apprenant 63 on 21/10/2022.
//

import SwiftUI

struct homeDetail: View {
    let rows = [
            GridItem(.fixed(47)),
            GridItem(.fixed(47))
        ]
   
    var body: some View {
        ZStack {
            Color("primaryColor")
                .ignoresSafeArea()
            VStack {
                
                titleComponent(film: FilmHome(title: "Le Seigneur des Anneaux", subTitle: "Les Deux Tours", opus: "", cover: "LSDA2T"))
                    
                ZStack {
                    Image("LSDA2T")
                        .resizable()
                        .frame(width: 250, height: 350)
                        .cornerRadius(10)
                        .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                    
                    HStack {
                        Image(systemName: "multiply.circle.fill")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                            .foregroundColor(Color("titleBackgroundColor"))
                        Image(systemName: "greaterthan.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color("titleBackgroundColor"))
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                            .foregroundColor(Color("titleBackgroundColor"))
                    }.padding(.top, 340)
                }
                
                VStack{
                    LazyHGrid(rows: rows, alignment: .top) {
                        ForEach(plateformLogos) { plateformLogo in
                            plateFormButton(plateformLogo: plateformLogo)
                        }
                    }.frame(height: 47)
                }.padding(.top, 60)
                    
                
            }.padding(.top, 20)
        }
    }
}

struct homeDetail_Previews: PreviewProvider {
    static var previews: some View {
        homeDetail()
    }
}
