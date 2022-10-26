//
//  Parameters.swift
//  Flow
//
//  Created by Adel Djelti on 24/10/2022.
//

import SwiftUI

struct Parameters: View {
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            Color("primaryColor").ignoresSafeArea()
            VStack{
                Spacer()
                    .frame(height: 200)
                VStack{
                    VStack{
                        Text("Dites nous ce que vous aimez").font(.title)
                            .foregroundColor(Color("secondaryColor"))
                    }
                    
                    VStack{
                        Text("Pour que nous puissions créer votre page personnalisée et améliorer vos recommandations")
                            .foregroundColor(Color("secondaryColor"))
                            .multilineTextAlignment(.center)
                    }
                    .frame(height: 90)
                    .offset(x: 0, y:-20)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 309, height: 26)
                            .cornerRadius(25)
                            .foregroundColor(Color("titleBackgroundColor"))
                            .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                        
                        HStack {
                            Image(systemName: "magnifyingglass.circle")
                                .foregroundColor(Color("secondaryColor"))
                            SecureField("Votre recherche... ", text: $searchText)
                                .font(.system(size: 14))
                                .foregroundColor(Color("secondaryColor"))
                                .frame(width: 270)
                        }
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    HStack {
                        Text("Passer à cette étape")
                        Image(systemName: "arrow.right")
                        
                    }
                    .offset(x:85, y:0 )
                    .font(.system(size: 15))
                    .foregroundColor(Color("secondaryColor"))
                }
                // fin vstack
                .padding(.horizontal)
                
                VignetteFilm()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Parameters_Previews: PreviewProvider {
    static var previews: some View {
        Parameters()
    }
}


