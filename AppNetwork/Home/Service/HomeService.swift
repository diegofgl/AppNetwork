//
//  File.swift
//  AppNetwork
//
//  Created by Diego Rodrigues on 30/10/23.
//

import UIKit

class HomeService {
    func getPersonList(completion: @escaping (Result<[Person],NetworkError>) -> Void) {
        let urlString: String = "0f54764e-7104-4285-bcca-d8d602366d00"
        let endpoint = Endpoint(url: urlString)
        ServiceManager.shared.request(with: endpoint, decodeType: PersonList.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.person))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
}

