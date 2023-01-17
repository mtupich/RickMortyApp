//
//  RMCharacter.swift
//  RickMortyApp
//
//  Created by Maria Tupich on 16/01/23.
//

import Foundation

struct RMCharacter: Codable {
    let characterId: Int
    let name: String
    let characterStatus: String
    let species: String
    let characterType: String
    let gender: String
    let origin: RMOrigin
    let characterLocation: RMSingleLocation
    let characterImage: String
    let episode: [String]
    let characterUrl: String
    let characterCreated: String
    
    enum CodingKeys: String, CodingKey {
        case characterId = "id"
        case characterStatus = "status"
        case characterType = "type"
        case characterLocation = "location"
        case characterImage = "image"
        case characterUrl = "url"
        case characterCreated = "created"
        case name
        case species
        case gender
        case origin
        case episode
    }
}


