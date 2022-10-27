//
//  actorInfoGrid.swift
//  Flow
//
//  Created by Apprenant97 on 27/10/2022.
//

import SwiftUI

struct actorInfoGrid: View {
    let rows = [
            GridItem(.fixed(140)),
            GridItem(.fixed(140))
        ]
    var gradientRectangleTitle2: String
    

    var body: some View {
        VStack(alignment: .leading) {

                Text("\(gradientRectangleTitle2)")
                    .fontWeight(.bold)
                    .font(.system(size: 12))
                    .foregroundColor(Color("secondaryColor"))
                    .padding(.top, 5)
                
               
            LazyHGrid(rows: rows, alignment: .center) {
                ForEach(actorComponents) { actorComponent in
                    actorInfo(actorComponent: actorComponent)
                    
                }
            }.frame(height: 260)
        }.padding(.top, 5)
    }
}

struct actorInfoGrid_Previews: PreviewProvider {
    static var previews: some View {
        actorInfoGrid(gradientRectangleTitle2: "Casting")
    }
}
