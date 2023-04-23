//
//  CartViewModel.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI
import Foundation

class CartViewModel: ObservableObject {
    @Published var items: [CartItem] = [
        CartItem(item: Item(name: "Macbook", description: "", image: "macbook", price: 2000), count: 3)
    ]
}
