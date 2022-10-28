//
//  plateFormButton.swift
//  Flow
//
//  Created by Apprenant 63 on 21/10/2022.
//

import SwiftUI

struct Logo: Identifiable {
        let image: String
        var id: String { image }
        
    }

    let plateformLogos: [Logo] = [
        Logo(image: "Netflix-logo"),
        Logo(image: "Disney-logo"),
        Logo(image: "Amazon-logo-blanc")
        
    ]

struct plateFormButton: View {
    var plateformLogo : Logo
    
    
    var body: some View {
        
        Image("\(plateformLogo.image)")
            .resizable()
            .scaledToFit()
            .frame(width: 147, height: 37)
            .padding(5)
            .background(Color("buttonColor"))
            .cornerRadius(50)
            .shadow(color: Color("secondaryColor").opacity(0.7), radius: 3, x: -2, y: 2)
    }
}

//struct plateFormButton_Previews: PreviewProvider {
//    static var previews: some View {
//        plateFormButton(plateformLogo: "Disney-logo")
//    }
//}
