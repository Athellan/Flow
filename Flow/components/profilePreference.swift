//
//  profilePreference.swift
//  Flow
//
//  Created by Apprenant97 on 24/10/2022.
//

import SwiftUI

struct profilePreference: View {
    let rows = [
            GridItem(.fixed(100)),
            GridItem(.fixed(100))
        ]
    var gradientRectangleTitle2: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(gradientRectangleTitle2)")
                .fontWeight(.bold)
                .font(.system(size: 17))
                .foregroundColor(Color("secondaryColor"))
                .padding(.top, 5)
               
            LazyHGrid(rows: rows, alignment: .center) {
                profileAddPreference()
                ForEach(movieCategories) { movieCategory in
                    profileCategoryPreference(movieCategory: movieCategory)
                    
                }
            }.frame(height: 210)
        }
    }
}



struct profilePreference_Previews: PreviewProvider {
    static var previews: some View {
        profilePreference(gradientRectangleTitle2: "Plop")
    }
}
