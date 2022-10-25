//
//  ButtonInscriptionFinish.swift
//  Flow
//
//  Created by Adel Djelti on 25/10/2022.
//

import SwiftUI

struct ButtonInscriptionFinish: View {
    var body: some View {
        NavigationLink(destination:pr, label:{
            Text("S'inscrire")
        })
        
    }
}

struct ButtonInscriptionFinish_Previews: PreviewProvider {
    static var previews: some View {
        ButtonInscriptionFinish()
    }
}
