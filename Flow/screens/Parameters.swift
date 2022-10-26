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
                    
                    Text("Dites nous ce que vous aimez").font(.title)

                    VStack{
                        Text("Pour que nous puissions créer votre page personnalisée et améliorer vos recommandations")
                    }
                    .frame(height: 90)
                    .offset(x: 0, y:-20)
                    TextField("Search ...", text: $searchText)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color(.systemGray6))
                        .cornerRadius(20)
                        .offset(x: 0, y: 20)
                    Spacer()
                        .frame(height: 80)
                    Text("Passer à cette étape ->").offset(x:80, y:0 )
                }
            
                // fin vstack
                
                
                .padding(.horizontal)
            
                VignetteFilm()
            }
        }
    }
}

struct Parameters_Previews: PreviewProvider {
    static var previews: some View {
        Parameters()
    }
}


