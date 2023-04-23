//
//  CartView.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct CartView: View {
    @ObservedObject private var viewModel = CartViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.items) { cartItem in
                CartRowView(item: cartItem)
                    .listRowBackground(Color.black)
                    .listRowSeparator(.visible)
            }
            .listStyle(.plain)
            .background(Color.black)
            .navigationBarTitle("Notifications", displayMode: .automatic)
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
