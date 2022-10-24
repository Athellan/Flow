//
//  profileEvents.swift
//  Flow
//
//  Created by Apprenant97 on 24/10/2022.
//

import SwiftUI

struct profileEvents: View {
    var gradientRectangleImage: String
    var gradientRectangleTitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("\(gradientRectangleTitle)")
                .fontWeight(.bold)
                .font(.system(size: 17))
                .foregroundColor(Color("secondaryColor"))
                .padding(.leading, 15)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    Button {
                        // fonction bouton = diriger vers map
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .frame(width: 109, height: 156)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .background(Color("highlightColor"))
                            .cornerRadius(10)
                        }
                    
                    Image("\(gradientRectangleImage)")
                        .resizable()
                        .frame(width: 109, height: 156)
                        .cornerRadius(10)
                        .onTapGesture(count: 1) {
                            // navlink vers event view details
                        }.padding(.leading, 5)
                    
                    
                }.padding(.leading, 15)
            }.frame(width: 352)
        }
    }
}

struct profileEvents_Previews: PreviewProvider {
    static var previews: some View {
        profileEvents(gradientRectangleImage: "serieMania", gradientRectangleTitle: "Mes évènements")
    }
}
