//
//  homeDetail.swift
//  Flow
//
//  Created by Apprenant 63 on 21/10/2022.
//

import SwiftUI

struct homeDetail: View {
    
    let film : FilmHome
    
    var body: some View {
        ZStack {
            Color("primaryColor")
                .ignoresSafeArea()
            VStack {
                VStack {
                    Text(film.title)
                        .bold()
                        .font(.system(size: 20))
                    Text(film.subTitle)
                        .font(.system(size: 17))
                }
                .padding()
                .cornerRadius(7)
                .frame(width: 352, height: 60)
                .padding(5)
                .background(Color("titleBackgroundColor"))
                .cornerRadius(10)
                .shadow(color: Color("secondaryColor"), radius: 4, x: -3, y: 4)
                .foregroundColor(Color("secondaryColor"))
                Spacer()
                Image("LSDA2T")
                    .resizable()
                    .frame(width: 240, height: 350)
                    .cornerRadius(10)
                    .shadow(color: Color("secondaryColor"), radius: 4, x: -3, y: 4)
                HStack {
                    Image(systemName: "multiply.circle.fill")
                        .resizable()
                        .frame(width: 32.0, height: 32.0)
                    Image(systemName: "gobackward")
                        .resizable()
                        .frame(width: 42.0, height: 42.0)
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 32.0, height: 32.0)
                }
                
                Spacer()
                
                HStack {
                    plateFormButton()
                    plateFormButton()
                    plateFormButton()
                }
                Spacer()
            }
        }
    }
}

struct homeDetail_Previews: PreviewProvider {
    static var previews: some View {
        homeDetail(film: FilmHome(title: "Le Seigneur des Anneaux", subTitle: "Les Deux Tours", opus: "", cover: "LSDA2T"))
    }
}
