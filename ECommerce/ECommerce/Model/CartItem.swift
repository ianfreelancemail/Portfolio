//
//  CartItem.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct CartItem: Identifiable, Decodable {
    let id = UUID()
    var item: Item
    var count: Int
}
