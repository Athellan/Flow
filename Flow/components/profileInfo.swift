//
//  profileInfo.swift
//  Flow
//
//  Created by Apprenant97 on 21/10/2022.
//

import SwiftUI

struct profileInfo: View {
    var image : String
    var name : String
    var pseudo : String
    
    var body: some View {
        VStack {
            
            Image(image)
                .resizable()
                .frame(width: 144, height: 144)
                .cornerRadius(144)
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                .padding()
                
            Text("\(name)")
                .fontWeight(.regular)
                .font(.system(size: 22))
                .foregroundColor(Color("secondaryColor"))
            
            Text("\(pseudo)")
                .font(.system(size: 18))
                .foregroundColor(Color("secondaryColor"))
                .opacity(0.7)
        }
    }
}

//struct profileInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        profileInfo(image: "profilePicture", name: "Jay Paletan", pseudo: "@Gpaletan")
//
//
//    }
//}
