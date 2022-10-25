//
//  gradientRectangle.swift
//  Flow
//
//  Created by Apprenant97 on 21/10/2022.
//

import SwiftUI

struct gradientRectangle: View {
    var gradientTop: Color = Color(red: 0 / 255, green: 70 / 255, blue: 67 / 255)
    var gradientBottom: Color = Color(red: 149 / 255, green: 191 / 255, blue: 181 / 255)
//    var title: String
    
    var body: some View {
        
        
        ZStack {
            
//            Text("\(title)")
            Rectangle()
                .fill(LinearGradient(
                    gradient: .init(colors: [self.gradientTop, self.gradientBottom]),
                    startPoint: .init(x: 0.5, y: 0),
                    endPoint: .init(x: 0.5, y: 0.9)
                ))
                .cornerRadius(10)
                .opacity(0.3)
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            
            
            
        }
    }
}

struct gradientRectangle_Previews: PreviewProvider {
    static var previews: some View {
        gradientRectangle()
    }
}
