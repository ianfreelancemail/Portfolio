//
//  CategoryRow.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct CategoryRow: View {
    var category: Category
    var onTap: ((Category)->Void)?
    
    var body: some View {
        Button {
            onTap?(category)
        } label: {
            VStack(spacing: 5) {
                Image(category.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 40)
                    .clipped()
                    .padding(.top, 5)
                
                Text(category.name)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.horizontal, 10)
            }
            .foregroundColor(Color.black)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray)
            .cornerRadius(10)
        }
    }
}

