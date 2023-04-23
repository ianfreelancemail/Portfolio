//
//  SearchBar.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search", text: $text)
        }
        .padding(.horizontal, 12)
        .foregroundColor(Color.red)
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .cornerRadius(10)
        .background(Color.white)
    }
}
