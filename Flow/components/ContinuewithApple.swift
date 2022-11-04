//
//  ContinuewithApple.swift
//  Flow
//
//  Created by Adel Djelti on 24/10/2022.
//

import SwiftUI

struct ButtonContinueWithApple: View {
    var body: some View {
        VStack{
        Button(action: {
            
        }, label: {
            HStack{
            Image(systemName: "applelogo")
            Text("Continuer avec Apple ")
            }.font(.headline)
                .foregroundColor(.black)
                .frame(width: 268,height: 49)
                .background(Color.white)
                .cornerRadius(100)
        })
        }
                    
                }
            }
        
    


struct ButtonContinuewithApple_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContinueWithApple()
    }
}
