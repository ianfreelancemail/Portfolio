//
//  User.swift
//  DependencyInjection
//
//  Created by Ian Talisic on 22/04/2023.
//

import Foundation

struct User: Decodable {
    let id: Int
    let name: String
    let age: Int
    let address: String
}
