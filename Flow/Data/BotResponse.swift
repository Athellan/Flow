//
//  BotResponse.swift
//  Flow
//
//  Created by Apprenant 63 on 24/10/2022.
//

import Foundation

func getBotResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("hello"){
        return "Bonjour"
    } else if tempMessage.contains("au revoir"){
        return "Ciao a la revoyure"
    } else if tempMessage.contains("comment ca va"){
        return "Ca va très bien et toi ?"
    } else {
        return "Cool !"
    }
}
