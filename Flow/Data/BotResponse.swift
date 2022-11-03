//
//  BotResponse.swift
//  Flow
//
//  Created by Apprenant 63 on 24/10/2022.
//

import Foundation

func getBotResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("hello") || tempMessage.contains("coucou") || tempMessage.contains("hi") || tempMessage.contains("bonjour") || tempMessage.contains("salut") || tempMessage.contains("kikoo"){
        return "Bonjour"
    } else if tempMessage.contains("au revoir") || tempMessage.contains("ciao") || tempMessage.contains("bye") || tempMessage.contains("a plus") || tempMessage.contains("a+"){
        return "Ciao a la revoyure"
    } else if tempMessage.contains("comment ca va") || tempMessage.contains("ca va") || tempMessage.contains("ca va ?") || tempMessage.contains("sa va") || tempMessage.contains("sa va ?"){
        return "Ca va très bien et toi ?"
    } else {
        return "Cool !"
    }
}
