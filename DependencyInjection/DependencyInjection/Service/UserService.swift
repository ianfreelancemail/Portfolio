//
//  UserService.swift
//  DependencyInjection
//
//  Created by Ian Talisic on 22/04/2023.
//

import Foundation

class UserService: APIService {
    func getData<T>(param: NSDictionary, _ completion: @escaping (Result<T, Error>) -> Void) {
        // Mocked Implementation
        let user = User(
            id: 1,
            name: "Eyan",
            age: 32,
            address: "Cebu City, Philippines, 6000"
        )
        completion(.success(user as! T))
        
        
        // TODO: Implement API request with URLSession for user data
        //completion(.failure(NSError(domain: "com.example.app", code: 0, userInfo: nil)))
    }
}
