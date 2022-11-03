//
//  Connexion.swift
//  Flow
//
//  Created by Adel Djelti on 20/10/2022.
//

import SwiftUI


struct ConnexionView: View {
    

    @State private var username = ""
    @State private var password = ""
    @Binding var isConnected: Bool
    @State private var failedConnexion : Bool = false
    @State private var succedConnexion : Bool = false
    @State private var showParametersScreen : Bool = false
    
    
    var body: some View {
        NavigationView{
            ZStack {
                Color("primaryColor").ignoresSafeArea()
                VStack{
                    Text("Bienvenue.")
                        .font(.system(size: 25))
                        .foregroundColor(Color("secondaryColor"))
                    
                    Spacer()
                        .frame(height: 600)
                }
                
                VStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 309, height: 26)
                            .cornerRadius(25)
                            .foregroundColor(Color("titleBackgroundColor"))
                            .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                        
                        HStack {
                            Image(systemName: "person.circle")
                                .foregroundColor(Color("secondaryColor"))
                            TextField("Identifiant", text: $username)
                                .font(.system(size: 14))
                                .foregroundColor(Color("secondaryColor"))
                                .frame(width: 270)
                        }
                    }
                    .padding()
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 309, height: 26)
                            .cornerRadius(25)
                            .foregroundColor(Color("titleBackgroundColor"))
                            .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                        
                        HStack {
                            Image(systemName: "lock.circle")
                                .foregroundColor(Color("secondaryColor"))
                            SecureField("Mot de passe ", text: $password)
                                .font(.system(size: 14))
                                .foregroundColor(Color("secondaryColor"))
                                .frame(width: 270)
                        }
                    }
                    
                    Text("Mot de passe oublié ? ").bold()
                        .offset(x: 95, y: 10)
                        .font(.system(size: 10))
                        .foregroundColor(Color("secondaryColor"))
                    
                    Spacer()
                        .frame(height: 50)
                    
                    if failedConnexion {
                        Text("Erreur de saisie")
                            .foregroundColor(Color("secondaryColor"))
                            .font(.system(size: 15))
                    }

                   
                    NavigationLink(destination: ParametersView(
                        isConnected: $isConnected,
                        film: FilmHome(title: "", subTitle: "", opus: "", cover: "")),
                                   label: {
                        Text("Connexion")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 198,height: 32)
                            .background(Color("buttonColor"))
                            .cornerRadius(20)
                    })
                
                    
                    ButtonInscription()
                    
                    ButtonContinueWithApple()
                }
                
            }
            //fin Zstack
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ConnexionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionView(isConnected: .constant(false))
    }
}
















