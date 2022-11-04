//
//  Parameters.swift
//  Flow
//
//  Created by Adel Djelti on 24/10/2022.
//

import SwiftUI

struct ParametersView: View {
    
    @State private var searchText = ""
    
    @State private var isShowingParametersView = false
    
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack{
                Text("Dites nous ce que vous aimez")
                    .font(.system(size: 25))
                    .foregroundColor(Color("secondaryColor"))
                    .padding(.top, 115)
                
                
                VStack{
                    Text("Pour que nous puissions créer votre page personnalisée et améliorer vos recommandations")
                        .foregroundColor(Color("secondaryColor"))
                        .multilineTextAlignment(.center)
                    
                }.frame(width: 300, height: 90)
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
                
                
                
                NavigationLink(destination: HomeView(), isActive : $isShowingParametersView, label: {
                    HStack(alignment: .center) {

                        Button("   Passer cette étape") {
                            isConnected = true
                        }

                        .font(.system(size: 11))
                        .foregroundColor(Color("secondaryColor"))
 
                        Image(systemName: "greaterthan")
                            .resizable()
                            .frame(width: 5, height: 8)
                            .padding(.leading, 5)
                            .foregroundColor(Color("secondaryColor"))
                    }
                    .padding(.leading, 200)

                })


                
            }
            

            VStack {
            
            VignetteTrending()
                .padding()
            VignetteFilm()
                .padding()
            VignetteSerie()
                .padding()
            Button("C'est parti") {
                isConnected = true

            }
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 198,height: 32)
            .background(Color("buttonColor"))
            .cornerRadius(20)
            .padding(.vertical, 50)
        }
        .ignoresSafeArea()
        .frame(width: 400)
        .background(Color("primaryColor"))
        .navigationBarBackButtonHidden(true)
        
        
//        Button("C'est parti") {
//            isConnected = true
//        }
//        .font(.headline)
//        .foregroundColor(.white)
//        .frame(width: 198,height: 32)
//        .background(Color("buttonColor"))
//        .cornerRadius(20)
//        .padding(.vertical, 50)
    }
}




struct ParametersView_Previews: PreviewProvider {
    static var previews: some View {
        ParametersView()
    }
}
