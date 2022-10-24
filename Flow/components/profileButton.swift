//
//  profileButton.swift
//  Flow
//
//  Created by Apprenant97 on 21/10/2022.
//

import SwiftUI
        
        struct profileButton: View {
            var image: String
            var score: Int
            
            var body: some View {
                HStack {
                    
                    Image(image)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color("buttonColor"))
                    Text("\(score)")
                        .foregroundColor(Color("buttonColor"))
                        .padding(.leading, 10)
                        .fontWeight(.bold)
                    
                }
                .frame(width: 106, height: 41)
                .background(Color("titleBackgroundColor"))
                .cornerRadius(50)
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            }
        }

//color: Color.black.opacity(0.2)
//struct buttonProfile {
//    var image: String
//    var score: Int
//}

//struct profileButton_Previews: PreviewProvider {
//    static var previews: some View {
//        profileButton(image: "favoriteNumber", score: 12)
//    }
//}

