//
//  PostDto.swift
//  Flow
//
//  Created by Adel Djelti on 31/10/2022.
//

import Foundation



struct PostDto: Codable {
    let records: [RecordDto]
    
    struct RecordDto: Codable {
        let fields: FieldsDto
    }
    
    struct FieldsDto: Codable {
        let name: String
        let email: String
        let password : String

        
    
    }
    
}
