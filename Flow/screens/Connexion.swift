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
                    
                  
                    if succedConnexion {
                        Text("ok")
                    }
                    
                    
                      else if failedConnexion {
                          Text("dddjd")
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
    
    func authenticate(username : String, password : String) {
      
        
        if self.username == "Adel" {
            self.succedConnexion = true
    
            self.failedConnexion = false
            
        }
        
        else if  self.username != "Adel" && self.password != "1234"{
            self.failedConnexion = true
            self.succedConnexion = false
        }
  
        
    }
    
    
    var body: some View {
        
        Button("Connexion") {
            
            authenticate(username: username, password:password)
        }
        
        
        .font(.headline)
        .foregroundColor(.white)
        .frame(width: 198,height: 32)
        .background(Color.black)
        .cornerRadius(20)
        .padding()
        
        
        
    }
}
