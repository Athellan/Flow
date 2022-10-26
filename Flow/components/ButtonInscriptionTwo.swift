//
//  ButtonInscriptionTwo.swift
//  Flow
//
//  Created by Adel Djelti on 25/10/2022.
//

import SwiftUI

struct  ButtonInscriptionTwo: View {
    
    @Binding var username : String
    @Binding var email : String
    @Binding var password : String
    @Binding var confirmedpassword : String
    @Binding var showInscription : Bool
    var body: some View {
        Button("S'inscrire"){
            
            if username.isEmpty &&  email.isEmpty  {
                showInscription = false
                
            }
            
            else if  password.isEmpty && confirmedpassword.isEmpty{
                showInscription = false
            }
            
            else if  password != confirmedpassword{
                        showInscription = false
                
            }
            else {
                showInscription = true
            }
            
            
            
        }
        .font(.headline)
        .foregroundColor(.white)
        .frame(width: 198,height: 32)
        .background(Color.black)
        .cornerRadius(20)
    }
}


struct ButtonInscriptionTwo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonInscriptionTwo(username: .constant(""), email:.constant(""), password: .constant(""), confirmedpassword: .constant(""),showInscription: .constant(false))
    }
}
