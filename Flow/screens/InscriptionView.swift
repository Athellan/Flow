//
//  Inscription.swift
//  Flow
//
//  Created by Adel Djelti on 20/10/2022.
//

import SwiftUI

struct InscriptionView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmedpassword = ""
    @State private var showInscription = false
    @State private var isGoingOnParam = false
    
    var body: some View {
        
        NavigationView{
            ZStack {
                Color("primaryColor").ignoresSafeArea()
                
                VStack{
                    Text("C'est parti !")
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
                    .padding(7)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 309, height: 26)
                            .cornerRadius(25)
                            .foregroundColor(Color("titleBackgroundColor"))
                            .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                        
                        HStack {
                            Image(systemName: "envelope.circle")
                                .foregroundColor(Color("secondaryColor"))
                            TextField("E-mail", text: $email)
                                .font(.system(size: 14))
                                .foregroundColor(Color("secondaryColor"))
                                .frame(width: 270)
                        }
                    }
                    .padding(7)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 309, height: 26)
                            .cornerRadius(25)
                            .foregroundColor(Color("titleBackgroundColor"))
                            .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                        
                        HStack {
                            Image(systemName: "lock.circle")
                                .foregroundColor(Color("secondaryColor"))
                            TextField("Mot de passe", text: $password)
                                .font(.system(size: 14))
                                .foregroundColor(Color("secondaryColor"))
                                .frame(width: 270)
                        }
                    }
                    .padding(7)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 309, height: 26)
                            .cornerRadius(25)
                            .foregroundColor(Color("titleBackgroundColor"))
                            .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                        
                        HStack {
                            Image(systemName: "lock.circle.fill")
                                .foregroundColor(Color("secondaryColor"))
                            TextField("Confirmer mot de passe", text: $confirmedpassword)
                                .font(.system(size: 14))
                                .foregroundColor(Color("secondaryColor"))
                                .frame(width: 270)
                        }
                    }
                    .padding(7)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    signButton
                    
                    NavigationLink(destination: ConnexionView(), label: {
                        Text("Retour")
                            .foregroundColor(Color("secondaryColor")).bold()
                            .font(.system(size: 10))
                            .padding(10)
                    })
                }
                // stack text de fin
                VStack{
                    Spacer()
                        .frame(height: 500)
                    
                    Text("En continuant, vous acceptez les **Conditions d’utilisation** et la **Politique de confidentialité** de l’application.")
                        .multilineTextAlignment(.center)
                }
                .font(.system(size: 10))
                .foregroundColor(Color("secondaryColor"))
                .frame(width: 300)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Inscription_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionView()
    }
}

extension InscriptionView {
    private var signButton: some View {
        VStack {
            NavigationLink(destination: ParametersView(), isActive: $isGoingOnParam) { EmptyView() }
            Button {
                isGoingOnParam = true
            } label: {
                Text("S'inscrire")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 198,height: 32)
                    .background(Color("buttonColor"))
                    .cornerRadius(20)
            }
        }
    }
}
