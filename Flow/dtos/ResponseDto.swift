//
//  ResponseDto.swift
//  Flow
//
//  Created by Apprenant 63 on 31/10/2022.
//

import Foundation

struct ResponseDto: Decodable {
    let Search: [searchItem]
    }

struct searchItem: Decodable {
    let Title: String
    let Poster: String
}
