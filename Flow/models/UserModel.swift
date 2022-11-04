//
//  UserModel.swift
//  Flow
//
//  Created by apprenant50 on 03/11/2022.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let password : String
    let email : String
    let name : String
    
    enum SubscriptionError: Error {
        case invalidUsername
        case invalidPassword
        case invalidEmail
        case passwordsNotMatching
    }
    enum UserError: Error {
        case usersNotFound
    }
}
