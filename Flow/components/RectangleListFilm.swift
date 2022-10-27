//
//  RectangleListFilm.swift
//  Flow
//
//  Created by Adel Djelti on 25/10/2022.
//

import SwiftUI

struct RectangleListFilm: View {
    var body: some View {
        VStack(alignment: .trailing){
            
            Spacer()
                .frame(height: 200)
            
            
            Text("Passer cette étape ->")
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.green)
                .frame(width: 356, height: 400)
            
            
            
        }
    }
}

struct RectangleListFilm_Previews: PreviewProvider {
    static var previews: some View {
        RectangleListFilm()
    }
}
