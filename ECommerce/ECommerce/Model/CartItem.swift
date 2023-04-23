//
//  CartItem.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct CartItem: Identifiable, Decodable {
    var id = UUID()
    var item: Item
    var count: Int
    
    
    mutating func reduceCount() {
        if count > 0 {
            count -= 1
        }
    }
    
    mutating func addCount() {
        count += 1
    }
}
