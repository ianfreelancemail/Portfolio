//
//  APIService.swift
//  DependencyInjection
//
//  Created by Ian Talisic on 22/04/2023.
//

import Foundation

protocol APIService {
    func getData<T>(param: NSDictionary, _ completion: @escaping (Result<T, Error>) -> Void)
}
