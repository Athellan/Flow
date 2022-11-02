//
//  Parameters.swift
//  Flow
//
//  Created by Adel Djelti on 24/10/2022.
//

import SwiftUI

struct ParametersView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        ScrollView {
            ZStack {
                Color("primaryColor")
                VStack{
                    VStack{
                        VStack{
                            Text("Dites nous ce que vous aimez")
                                .font(.system(size: 25))
                                .foregroundColor(Color("secondaryColor"))
                            
                        }
                        .padding(.top, 115)
                        VStack{
                            Text("Pour que nous puissions créer votre page personnalisée et améliorer vos recommandations")
                                .foregroundColor(Color("secondaryColor"))
                                .multilineTextAlignment(.center)
                        }
                        .frame(width: 300, height: 90)
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
                                .padding(.bottom, 5)
                            
                        }
                        .offset(x:85, y:0)
                        .font(.system(size: 15))
                        .foregroundColor(Color("secondaryColor"))
                    }
                    .padding(.horizontal)
                    
                    VignetteTrending()
                        .padding()
                    VignetteFilm()
                        .padding()
                    VignetteSerie()
                        .padding()
                }
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
        }.ignoresSafeArea()
    }
}

struct ParametersView_Previews: PreviewProvider {
    static var previews: some View {
        ParametersView()
    }
}

extension ParametersView {
    private var goButton: some View {
        NavigationView{
//            NavigationLink(destination: HomeView(film: film)) {
                Button("C'est parti") {
                }
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 198,height: 32)
                .background(Color("buttonColor"))
                .cornerRadius(20)
            }
        }
    }


