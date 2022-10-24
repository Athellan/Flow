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
    @Binding var failedConnexion : Bool
    @Binding var password : String
    
    func authenticate(username : String, password : String, succedConnexion: Bool , failedConnexion: Bool) {
        
        
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
            
            authenticate(username: username, password:password,succedConnexion: succedConnexion, failedConnexion: failedConnexion)
        }
        
        .font(.headline)
        .foregroundColor(.white)
        .frame(width: 198,height: 32)
        .background(Color.black)
        .cornerRadius(20)
        .padding()
        
    }
}


struct ButtonConnexion_Previews: PreviewProvider {
    static var previews: some View {
        ButtonConnexion(username: .constant(""), succedConnexion: .constant(false), failedConnexion: .constant(false), password: .constant(""))
    }
}



