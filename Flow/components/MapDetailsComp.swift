//
//  MapDetailsComp.swift
//  Flow
//
//  Created by apprenant50 on 24/10/2022.
//

import SwiftUI

struct MapDetailsVideoButton: View {
    let url: String
    let durationClip: String
    let image: String
    let title: String
    let subname: String
    let date: String
    let hours: String
    var body: some View {
        HStack{
            Button(action: {
                if let url = URL(string: url) {
                    UIApplication.shared.open(url)
                }
            }, label: {
                ZStack(alignment: .bottomLeading){
                    Image(image)
                        .resizable()
                        .frame(width: 155, height: 89)
                        .cornerRadius(10)
                        .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .opacity(0.1)
                        .foregroundColor(.black)
                        .frame(width: 35, height: 20)
                        .padding(5.5)
                    
                    Text(durationClip)
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                        .padding(9)
                    
                }.shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            })
            VStack(alignment: .leading, spacing: 12){
                Text(title)
                    .font(.system(size: 12))
                    .bold()
                    .foregroundColor(Color("secondaryColor"))
                Text(subname)
                    .font(.system(size: 10))
                    .foregroundColor(Color("secondaryColor"))
                    .italic()
                Text("\(date) | \(hours)")
                    .font(.system(size: 10))
                    .foregroundColor(Color("secondaryColor"))
                    .bold()
            }
        }.frame(width: 380, height: 119)
    }
}

