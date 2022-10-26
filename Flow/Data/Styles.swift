//
//  Styles.swift
//  TTTTTTT
//
//  Created by apprenant50 on 24/10/2022.
//

import Foundation
import SwiftUI

struct RoundedButtonColored: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color("secondaryColor"))
            .foregroundColor(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color: .gray, radius: 7)
    }
}

struct RoundedButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.white)
            .foregroundColor(Color("secondaryColor"))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color: .gray, radius: 7)
    }
}

struct OvalTextFieldStyle: TextFieldStyle {
    var cornerRadius: CGFloat
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(5)
            .background(.white)
            .cornerRadius(cornerRadius)
            .shadow(color: .gray, radius: 7)
    }
}

struct OvalTextFieldStyleRed: TextFieldStyle {
    var cornerRadius: CGFloat
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(5)
            .background(.white)
            .foregroundColor(.red.opacity(0.7))
            .cornerRadius(cornerRadius)
            .shadow(color: .gray, radius: 7)
    }
}

struct gradientRectangle: View {
    var gradientTop: Color = Color(red: 0 / 255, green: 70 / 255, blue: 67 / 255)
    var gradientBottom: Color = Color(red: 149 / 255, green: 191 / 255, blue: 181 / 255)
    
    var body: some View {
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

