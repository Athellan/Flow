//
//  Profile.swift
//  Flow
//
//  Created by Apprenant97 on 20/10/2022.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        ZStack{
            Color("primaryColor")
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
            VStack {
                profileInfo(image: "profilePicture", name: "Jay Paletan", pseudo: "@Gpaletan")
                
                
                    VStack {
                        HStack {
                            profileButton(image: "favoriteNumber", score: 18)
                            Spacer()
                            profileButton(image: "showNumber", score: 25)
                            Spacer()
                            profileButton(image: "pauseNumber", score: 11)
                        }
                        .frame(width: 352)
                        .padding(.vertical, 20)
                        
                        ZStack {
                            gradientRectangle()
                                .frame(width: 352, height: 220)
                            profileEvents(eventImage: "serieMania", gradientRectangleTitle: "Mes évènements")
                        }
                        
                        ZStack {
                            gradientRectangle()
                                .frame(width: 352, height: 280)
                                
                            profilePreference(gradientRectangleTitle2: "Mes préférences")
                            //profile pref
                            
                        }.padding(.top, 10)
                    }.frame(width: 600)
                }
            } // fin VStack
        } // fin ZStack
    }
}

        
        


struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}


