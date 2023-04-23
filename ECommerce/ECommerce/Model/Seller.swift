//
//  Seller.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct Seller: Identifiable, Decodable, Hashable {
    var id: String
    var name: String
    var address: String
    var username: String
}
