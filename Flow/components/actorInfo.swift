//
//  actorInfo.swift
//  Flow
//
//  Created by Apprenant97 on 27/10/2022.
//

import SwiftUI

struct actorInfo: View {
    var actorComponent : Actor
    
    var body: some View {
        VStack {
            
            Image("\(actorComponent.image)")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 3, x: -2, y: 2)
                .padding(.bottom, 5)
        
        
            Text("\(actorComponent.name)")
                .bold()
                .font(.system(size: 10))
                .foregroundColor(Color("secondaryColor"))
                .padding(.top, 2)
        
            Text("\(actorComponent.role)")
                .foregroundColor(Color("secondaryColor"))
                .font(.system(size: 9))
        }.padding(.top, 20)
    }
}

struct actorInfo_Previews: PreviewProvider {
    static var previews: some View {
        actorInfo(actorComponent: actorComponents[0])
    }
}
