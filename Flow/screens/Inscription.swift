//
//  Inscription.swift
//  Flow
//
//  Created by Adel Djelti on 20/10/2022.
//

import SwiftUI

struct Inscription: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmedpassword = ""
    var body: some View {
        
        NavigationView{
            ZStack {
                Color("primaryColor").ignoresSafeArea()
                VStack{
                    Text("C'est parti").font(.title)
                    Spacer()
                }
                VStack{
                    
              
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 350,height: 40)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(20)
                        .padding()
                      
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 350,height: 40)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(20)
                 
                    
                    SecureField("Password",text: $password)
                        .padding()
                        .frame(width: 350,height:40)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(20)
                      
                        .padding()
                    
                    SecureField("Confirmer mot de passe ",text: $confirmedpassword)
                        .padding()
                        .frame(width: 350,height:40)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(20)
                    
                Spacer()
                        .frame(height: 50)

                    Button("S'inscrire") {
                        //
                    }
                    
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 198,height: 32)
                    .background(Color.black)
                    .cornerRadius(20)
                    
                } // fin de la VSTACK
                
                
                
            }
        }
    }
}

struct Inscription_Previews: PreviewProvider {
    static var previews: some View {
        Inscription()
    }
}
