//
//  Category.swift
//  Flow
//
//  Created by apprenant50 on 21/10/2022.
//

import SwiftUI

struct SearchbarLibrary: View {
    @State var searching: String = ""
    var body: some View {
        VStack{
            Text("Ma bibliothèque")
                .font(.system(size: 18))
                .bold()
                .shadow(radius: 15)
            
            TextField("Une idée ?", text: $searching)
                .textFieldStyle(OvalTextFieldStyle(cornerRadius: 25))
                .padding(20)
            
            Button(action: {
                //
            }, label: {
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }).padding(20)
        }
    }
}


struct Category: View {
    let isFav: Bool
    let image: String
    var body: some View {
        ZStack{
            VStack(alignment: .trailing){
                HStack(alignment: .firstTextBaseline, spacing: -42){
                    Image(image)
                        .resizable()
                        .frame(width: 140, height: 194)
                    
                    HStack{
                        if(isFav){
                            Image(systemName: "checkmark.circle.fill")
                                .font(.system(size: 27))
                                .foregroundColor(.green)
                            
                        }else{
                            Image(systemName: "checkmark.circle.fill")
                                .font(.system(size: 27))
                                .foregroundColor(.white)
                            
                        }
                    }
                }
            }.shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            
        }.cornerRadius(20)
    }
}
