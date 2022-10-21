//
//  plateFormButton.swift
//  Flow
//
//  Created by Apprenant 63 on 21/10/2022.
//

import SwiftUI

struct plateFormButton: View {
    var body: some View {
        
        Image("Disney-logo")
            .resizable()
            .frame(width: 100, height: 50)
            .cornerRadius(7)
            .padding(5)
            .background(Color("buttonColor"))
            .cornerRadius(10)
            .shadow(color: Color("secondaryColor"), radius: 4, x: -3, y: 4)
    }
}

struct plateFormButton_Previews: PreviewProvider {
    static var previews: some View {
        plateFormButton()
    }
}
