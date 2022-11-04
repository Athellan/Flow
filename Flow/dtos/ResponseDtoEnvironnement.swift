//
//  ResponseDto.swift
//  WelcomeBack
//
//  Created by Sengsathit SILALAK on 21/10/2022.
//

import Foundation

struct ResponseDto: Decodable {
    let records: [RecordDto]
    
    struct RecordDto: Decodable {
        let id: String
        let createdTime: String
        let fields: FieldsDto
    }
    
    struct FieldsDto: Decodable {
        let title: String?
        let image: String?
    }
    
}
