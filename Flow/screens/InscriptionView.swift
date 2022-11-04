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
    @State private var enterPassword = ""
    @State private var enterConfirmedPassword = ""
    
    @State private var error: Int = 0
   
    @State private var isClicked: Bool = false
    @State private var isRegistered: Bool = false
    var body: some View {
    
        if(!isRegistered){
        if(!isClicked){
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
                            TextField("Mot de passe", text: $enterPassword)
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

                            SecureField("Confirmer mot de passe", text: $enterConfirmedPassword)

                           

                                .font(.system(size: 14))
                                .foregroundColor(Color("secondaryColor"))
                                .frame(width: 270)
                        }
                    }
                    .padding(7)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    if(error != 0){
                        Text("Veuillez renseigner tout les champs et réessayer.")
                            .font(.system(size: 12))
                            .foregroundColor(Color("secondaryColor"))
                    }
                    
                    Button("Inscription"){
                        samePass(password: enterPassword, confirmedPassword: enterConfirmedPassword)
                    }.font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 198,height: 32)
                        .background(Color("buttonColor"))
                        .cornerRadius(20)
                    

                  
                    Button(action: {
                        isClicked.toggle()
                    }, label: {
                        Text("Retour")
                            .foregroundColor(Color("secondaryColor")).bold()
                            .font(.system(size: 10))
                            .padding(10)
                    })
                    

                    

                    
                

//                    NavigationLink(destination: ParametersView(isConnected: .constant(false), film: FilmHome(title: "", subTitle: "", opus: "", cover: "")), isActive: $showInscription, label: {
//                        Text("")
//                    })


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
        }.navigationBarBackButtonHidden(true)
        }else{
            ConnexionView()
        }
        }else{
            ParametersView()
        }
    }
    
    func samePass(password: String, confirmedPassword: String){
        if(!username.isEmpty && !email.isEmpty && !enterPassword.isEmpty && !enterConfirmedPassword.isEmpty){
            if(enterConfirmedPassword.lowercased() == enterPassword.lowercased()){
            isRegistered = true
                }else{
                   error = 1
                }
        }else{
            error = 1
        }
    }
}

struct Inscription_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionView()
    }
}
