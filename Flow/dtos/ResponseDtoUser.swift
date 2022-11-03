//
//  ResponseDtoUser.swift
//  Flow
//
//  Created by apprenant50 on 03/11/2022.
//

import Foundation

struct ResponseDtoUser: Decodable {
    let records: [RecordDto]
    
    struct RecordDto: Decodable {
        let fields: FieldsDto
    }
    
    struct FieldsDto: Decodable {
        let password : String
        let email : String
        let name: String
    }
}
