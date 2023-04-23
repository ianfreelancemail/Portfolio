//
//  CartRowView.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct CartRowView: View {
    var item: CartItem
    var body: some View {
        HStack {
            Image(item.image)
            
            VStack {
                Text((item.name))
                Text((item.seller?.name ?? ""))
            }

            VStack {
                Text()
                HStack {
                    Button("-") {
                        print("didTapMinus")
                    }
                    Spacer()
                    Button("+") {
                        print("didTapMinus")
                    }
                }
            }
        }
    }
}
