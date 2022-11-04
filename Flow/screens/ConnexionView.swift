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
    
    @ObservedObject var viewModel = UsersViewModel()
    @State var passwordIncorect: Int = 0
    
    @State var isConnected: Bool = false
    @State var isClicked: Bool = false
    
    var body: some View {
        if(isConnected == false){
            if(isClicked == false){
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
                                    .autocapitalization(.none)
                                    .disableAutocorrection(true)
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
                                    .autocapitalization(.none)
                                    .disableAutocorrection(true)
                            }
                        }
                        
                        Text("Mot de passe oublié ? ").bold()
                            .offset(x: 95, y: 10)
                            .font(.system(size: 10))
                            .foregroundColor(Color("secondaryColor"))
                        
                        Spacer()
                            .frame(height: 35)
                        
                        if(passwordIncorect == 1){
                            Text("Nom d'utilisateur ou mot de passe incorrect, veuillez réesayer !")
                                .font(.system(size: 12))
                                .foregroundColor(.red)
                                .padding(3)
                        }
                        
                        Button("Connexion"){
                            autheticateUser(username: username, password: password)
                        }.font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 198,height: 32)
                            .background(Color("buttonColor"))
                            .cornerRadius(20)
                            .padding(1)
                        
                        Button(action: {
                            isClicked.toggle()
                        }, label: {
                            Text("Inscription")
                        })
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 198,height: 32)
                            .background(Color("buttonColor"))
                            .cornerRadius(20)
                        }
                    }
                        
                Button(action: {
                    
                }, label: {
                    HStack{
                    Image(systemName: "applelogo")
                    Text("Continuer avec Apple ")
                    }.font(.headline)
                        .foregroundColor(.black)
                        .frame(width: 268,height: 49)
                        .background(Color.white)
                        .cornerRadius(100)
                })
                
                    }.navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
                .onAppear() {
                    Task {
                        await viewModel.fetchUsers()
                    }
                }
            }else{
                InscriptionView()
            }
                }else{
            TabViewView().environmentObject(LocationsViewModel())
        }
    }
    
    func autheticateUser(username: String, password: String){
        for user in viewModel.users{
            if(username == user.name || username == user.email){
                if(password == user.password){
                        isConnected.toggle()
                    }else{
                        passwordIncorect = 1
                    }
                }else{
                   passwordIncorect = 1
                }
            }
        }
}

struct ConnexionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionView(isConnected: false)
    }
}
















