//
//  Connexion.swift
//  Flow
//
//  Created by Adel Djelti on 20/10/2022.
//

import SwiftUI


let userLogin = "Adel"
let userPassword = "1234"

struct Connexion: View {
    
    
    @State private var username = ""
    @State private var password = ""
    
    @State private var failedConnexion : Bool = false
    @State private var succedConnexion : Bool = false
    
    
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
                        Text("Erreur de saisi")
                    }
                    
                    
                    LoginButton(username: $username, succedConnexion: $succedConnexion, failedConnexion: $failedConnexion, password: $password )
                    
                    
                    
                    
                    NavigationLink(destination:Inscription(), label:{
                        Text("Inscription")
                    })
                    
                    
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 198,height: 32)
                    .background(Color.black)
                    .cornerRadius(20)
                 
                    
                }
                
                VStack{
                    Spacer()
                        .frame(height: 500)
                    
                        Button {
                            //
                        }
                        label : {
                            Text("Continuer avec ")
                            Image(systemName: "apple.logo")
                        }
                        
                        
                        
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(width: 268,height: 49)
                        .background(Color.white)
                        .cornerRadius(100)
                       
                        
                    
                        
                } // fin de la VSTACK
                
                
                }
            }
            
        }
    }
    




struct Connexion_Previews: PreviewProvider {
    static var previews: some View {
        Connexion()
    }
}


struct LoginButton: View {
    @Binding var username : String
    @Binding var succedConnexion : Bool
    @Binding var failedConnexion : Bool
    @Binding var password : String
    
    func authenticate(){
        if username == userLogin &&  password == userPassword {
            succedConnexion = true
            
        }
        
        else if username != userLogin && password != userPassword {
            failedConnexion = true
            
        }
        
    }
    
    var body: some View {
        
        Button("Connexion") {
            
            authenticate()
        }
        
        
        .font(.headline)
        .foregroundColor(.white)
        .frame(width: 198,height: 32)
        .background(Color.black)
        .cornerRadius(20)
        .padding()
        
        
        
    }
}
