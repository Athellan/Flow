//
//  ChatView.swift
//  Flow
//
//  Created by Apprenant 63 on 24/10/2022.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    @State var messages : [String] = ["Bienvenue sur le JBot"]
    
    var body: some View {
        ZStack {
            Color("primaryColor")
                .ignoresSafeArea()
            VStack {
                HStack {
                    
                    Text("JBot").bold()
                        .frame(width: 350, height: 60)
                        .font(.largeTitle)
                        .foregroundColor(Color("secondaryColor"))
                    Image(systemName: "bubble.left.fill")
                        .font(.system(size: 26))
                        .foregroundColor(Color("secondaryColor"))
                }
                
                ScrollView {
                    ForEach(messages, id: \.self) {message in
                        if message.contains("[USER]") {
                            let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                            
                            HStack {
                                Spacer()
                                Text(newMessage)
                                    .padding()
                                    .foregroundColor(Color("secondaryColor"))
                                    .background(.gray.opacity(0.8))
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                    .foregroundColor(Color("secondaryColor"))
                            }
                        } else {
                            HStack {
                                Text(message)
                                    .padding()
                                    .background(.gray.opacity(0.15))
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                    .foregroundColor(Color("secondaryColor"))
                                Spacer()
                            }
                        }
                    }.rotationEffect(.degrees(180))
                }
                .rotationEffect(.degrees(180))
                
                HStack {
                    TextField("Ton message", text: $messageText)
                        .padding()
                        .background(Color("opacityColor"))
                        .cornerRadius(10)
                        .onSubmit {
                            sendMessage(message: messageText)
                        }
                    
                    Button {
                        sendMessage(message: messageText)
                    } label: {
                        Image(systemName: "paperplane.fill")
                    }
                    .font(.system(size:26))
                    .padding(.horizontal, 10)
                    .foregroundColor(Color("secondaryColor"))
                }
                .padding()
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

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
