//
//  ButtonInscription.swift
//  Flow
//
//  Created by Adel Djelti on 24/10/2022.
//

import SwiftUI



struct ButtonInscription: View {
    var body: some View {
        
        
        
            NavigationLink(destination:InscriptionView(), label:{
                Text("S'inscrire")
            })
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 198,height: 32)
            .background(Color("buttonColor"))
            .cornerRadius(20)
        }
    }




struct ButtonInscription_Previews: PreviewProvider {
    static var previews: some View {
        ButtonInscription()
    }
}


