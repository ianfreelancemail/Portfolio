//
//  Item.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct Item: Identifiable, Decodable, Hashable {
    var id = UUID()
    var name: String
    var description: String
    var image: String
    var price: Int
    var seller: Seller?
}
