//
//  Connexion.swift
//  Flow
//
//  Created by Adel Djelti on 20/10/2022.
//

import SwiftUI


struct Connexion: View {
    
    
    @State private var username = ""
    @State private var password = ""
    
    @State private var failedConnexion : Bool = false
    @State private var succedConnexion : Bool = false
    @State private var showLoginScreen : Bool = false
    
    
    var body: some View {
        NavigationView{
            ZStack {
                Color("primaryColor").ignoresSafeArea()
                
                
                VStack{
                    Text("Bienvenue").font(.title)
                    Spacer()
                }
                
                VStack{
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 350,height: 40)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(20)
                    
                    
                        .padding()
                    
                    SecureField("Password",text: $password)
                        .padding()
                        .frame(width: 350,height:40)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(20)
                    
                    
                    
                    Spacer()
                        .frame(height: 50)
                    
                    
                                        
                    if failedConnexion {
                        Text("erreur de saisi")
                    }
                    
                    
                    // mettre un navigateLink pour changer la direction du label ButtonConnexion avec un autre components pour pouvoir aller sur la page Parameterv1
                    
                    
                    
                        ButtonConnexion(username: $username, succedConnexion: $succedConnexion, password: $password, failedConnexion: $failedConnexion,showLoginScreen: $showLoginScreen)
                        
                        
                    NavigationLink(destination: Parameters(),   isActive: $showLoginScreen, label: {
                                        Text("")
                                    })
                    
                    ButtonInscription()
                   
                    
                    
                    
                    
                    ButtonContinueWithApple()
                    
                    
                }
                
            }
            //fin Zstack
            
        }
                
            }
            
        }
    
    





struct Connexion_Previews: PreviewProvider {
    static var previews: some View {
        Connexion()
    }
}
















