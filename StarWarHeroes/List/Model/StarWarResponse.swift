//
//  StarWarResponse.swift
//  StarWarHeroes
//
//  Created by Abanoub Nabil on 11/12/21.
//

import Foundation

struct StarWarResponse: Hashable, Codable {
    var results: [StarDetails]
}

struct StarDetails: Hashable, Codable {
    var name: String
    var height: String
    var mass: String
    var hair_color: String
    var skin_color: String
    var eye_color: String
    var birth_year: String
    var gender: String
    var image: String
}
