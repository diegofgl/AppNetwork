//
//  PersonList.swift
//  AppNetwork
//
//  Created by Diego Rodrigues on 26/10/23.
//

import Foundation

struct PersonList: Codable {
    var person: [Person]
}

struct Person: Codable {
    var name: String
    var lastName: String
    var phone: String
    
    enum CodingKeys: String, CodingKey {
        case name = "nome"
        case lastName = "sobrenome"
        case phone = "telefone"
    }
    
}

