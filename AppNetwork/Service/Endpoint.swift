//
//  Endpoint.swift
//  AppNetwork
//
//  Created by Diego Rodrigues on 07/11/23.
//

import Foundation

struct Endpoint {
    let url: String
    let method: HTTPMethod
    let headers: [String: String]?
    let parameters: Parameters?
    
    init(url: String, method: HTTPMethod = .get, headers: [String : String]? = nil, parameters: Parameters? = nil) {
        self.url = url
        self.method = method
        self.headers = headers
        self.parameters = parameters
    }
}

enum Parameters {
    case dictionary([String: Any])
    case encodable(Encodable)
}

