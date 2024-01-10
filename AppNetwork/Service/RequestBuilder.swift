//
//  RequestBuilder.swift
//  AppNetwork
//
//  Created by Diego Rodrigues on 07/11/23.
//

import Foundation

protocol RequestBuilder {
    func buildRequest(with endpoint: Endpoint, url: URL) -> URLRequest
}

