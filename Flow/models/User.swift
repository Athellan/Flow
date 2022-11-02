//
//  UserLogin.swift
//  Flow
//
//  Created by Adel Djelti on 31/10/2022.
//

import Foundation


struct User: Identifiable {
    let id = UUID()
    let name: String
    let email: String
}
