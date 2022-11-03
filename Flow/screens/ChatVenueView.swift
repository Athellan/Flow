//
//  ChatView.swift
//  Flow
//
//  Created by Apprenant 63 on 24/10/2022.
//

import SwiftUI

struct ChatVenueView: View {
    @State private var messageText = ""
    @State var messages : [String] = ["Bienvenue sur le JBot ! 😄"]
    
    let venue: Venue
    
    var body: some View {
        ZStack {
            Color("primaryColor")
                .ignoresSafeArea()
            VStack {
                HStack {
                    VStack {
                        Text(venue.name)
                            .bold()
                            .font(.system(size: 20))
                        Text(venue.adress)
                    }
                    .foregroundColor(Color("secondaryColor"))
                }
                .background(RoundedRectangle(cornerRadius: 50)
                    .frame(width: 354, height: 60)
                    .foregroundColor(Color.white)
                    .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4))
                .padding(.top, 15)
                
                ScrollView {
                    ForEach(messages, id: \.self) {message in
                        if message.contains("[USER]") {
                            let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                            
                            HStack {
                                Spacer()
                                Text(newMessage)
                                    .padding()
                                    .foregroundColor(Color.white)
                                    .background(Color("secondaryColor").opacity(0.7))
                                    .cornerRadius(30)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                    
                            }
                        } else {
                            HStack {
                                Text(message)
                                    .padding()
                                    .background(Color("highlightColor").opacity(0.4))
                                    .cornerRadius(30)
                                    .foregroundColor(Color("secondaryColor"))
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                    
                                Spacer()
                            }
                        }
                    }.rotationEffect(.degrees(180))
                }
                .rotationEffect(.degrees(180))
                
                HStack {
                    Image(systemName: "camera.circle.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(Color("secondaryColor"))
                    
                    ZStack {
                        TextField("Ton message", text: $messageText)
                            .padding()
                            .foregroundColor(Color("secondaryColor"))
                            .background(Color("secondaryColor").opacity(0.1))
                            .cornerRadius(30)
                            .onSubmit {
                                sendMessage(message: messageText)
                            }
                        
                        Button {
                            sendMessage(message: messageText)
                        } label: {
                            Image(systemName: "paperplane.fill")
                        }
                        .font(.system(size:25))
                        .padding(.leading, 255)
                        .foregroundColor(Color("secondaryColor"))
                    }
                }.padding()
            }
        }
    }
    func sendMessage(message: String) {
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                messages.append(getBotResponse(message: message))
            }
        }
    }
}

struct ChatVenueView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(film: FilmHome(title: "", subTitle: "", opus: "", cover: ""))
    }
}
