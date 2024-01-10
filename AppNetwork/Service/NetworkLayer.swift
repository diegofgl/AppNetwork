//
//  NetworkLayer.swift
//  AppNetwork
//
//  Created by Diego Rodrigues on 07/11/23.
//

import Foundation

protocol NetworkLayer {
    func request<T>(with endpoint: Endpoint, decodeType: T.Type, completion: @escaping (Result<T, NetworkError>) -> Void) where T : Decodable
    
}

