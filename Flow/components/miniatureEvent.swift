//
//  miniatureEvent.swift
//  Flow
//
//  Created by Apprenant97 on 31/10/2022.
//

import SwiftUI

struct miniatureEvent: View {
    
    let event : Event
    @State private var isFavorited = false
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .frame(width: 352, height: 84)
                .foregroundColor(Color("opacityColor"))
                .cornerRadius(10)
            
            HStack {
                Image(event.image)
                    .resizable()
                    .frame(width: 92, height: 92)
                    .cornerRadius(10)
                    .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            }
            .padding(.leading, -180)
            
            
            HStack(alignment: .bottom) {
                
                VStack(alignment: .leading) {
                    Text(event.title.uppercased())
                        .font(.system(size: 14))
                    Text(event.date.uppercased())
                        .bold()
                        .font(.system(size: 14))
                    Text(event.description)
                        .font(.system(size: 14))
                    
                }.foregroundColor(Color("secondaryColor"))
            }
            .frame(height: 55)
                
                FavoriteButton(isFavorited: $isFavorited)
                .padding(.leading, 290)
                .padding(.top, 25)
            
            }
        }
    }


struct miniatureEvent_Previews: PreviewProvider {
    static var previews: some View {
        miniatureEvent(event: Event(title: "Stranger Things", description: "Convention", image: "ST", date: "19/12/2022"))
    }
}
