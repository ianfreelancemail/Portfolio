//
//  CartRowView.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct CartRowView: View {
    var cartItem: CartItem
    var body: some View {
        HStack {
            Image(cartItem.item.image)
            
            VStack {
                Text(cartItem.item.name)
                VStack {
                    Text(String(cartItem.count))
                    HStack {
                        Button("-") {
                            print("didTapMinus")
                            if cartItem.count > 0 {
//                                cartItem.reduceCount()
                            }
                        }
                        Spacer()
                        Button("+") {
                            print("didTapPlus")
//                            cartItem.addCount()
                        }
                    }
                }
            }
        }
    }
}
