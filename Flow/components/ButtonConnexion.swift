//
//  ButtonConnexion.swift
//  Flow
//
//  Created by Adel Djelti on 24/10/2022.
//

import SwiftUI

struct ButtonConnexion: View {
    
    @Binding var username : String
    @Binding var succedConnexion : Bool
    @Binding var password : String
    @Binding var failedConnexion : Bool
    @Binding var showLoginScreen : Bool
    
    var body: some View {
        
        Button("Connexion") {
            
            if username == "User" && password == "user" {
                succedConnexion = true
                failedConnexion = false
                showLoginScreen = true
            } else {
                failedConnexion = true
                succedConnexion = false
                showLoginScreen = false
            }
        }
        .font(.headline)
        .foregroundColor(.white)
        .frame(width: 198,height: 32)
        .background(Color("buttonColor"))
        .cornerRadius(20)
    }
}


struct ButtonConnexion_Previews: PreviewProvider {
    static var previews: some View {
        ButtonConnexion(username: .constant(""), succedConnexion: .constant(false), password: .constant(""),failedConnexion: .constant(true),showLoginScreen: .constant(false))
    }
}




