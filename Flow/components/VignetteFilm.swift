//
//  VignetteFilm.swift
//  Flow
//
//  Created by Adel Djelti on 25/10/2022.
//

import SwiftUI

struct VignetteFilm: View {
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 352, height: 587)
                .foregroundColor(Color("darkgreen"))
            VStack{
                Text("Les plus regardés sur Netflix").bold().font(.title2).offset(x: -20, y: 0)
                    .foregroundColor(Color("secondaryColor"))
                    .font(.system(size: 20))
                Text("Voir tout")
                    .offset(x: 115, y: 0)
                    .foregroundColor(Color("secondaryColor"))
                    .padding(10)
                
                HStack{
                    filmDetails
                    filmDetails
                    filmDetails
                }
                
                Spacer()
                    .frame(height: 300)
            }
        }
    }
}

struct VignetteFilm_Previews: PreviewProvider {
    static var previews: some View {
        VignetteFilm()
    }
}

extension VignetteFilm {
    private var filmDetails : some View {
        Image("younetflix")
            .resizable()
            .frame(width: 97,height: 145)
            .cornerRadius(10)
        
    }
    
}

