//
//  ItemCard.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI


struct ItemCard: View {
    var item: Item
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        ZStack {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                HStack {
                    Image("special_offer")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, alignment: .leading)
                    Spacer()
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text(item.name)
                        .font(.footnote)
                        .bold()
                    Text("$\(item.price)")
                        .font(.footnote)
                        .bold()
                }
                .frame(maxWidth: .infinity)
                .frame(height: 30, alignment: .bottom)
                .padding(.vertical, 5)
                .background(Color.black.opacity(0.7))
            }
        }
        .foregroundColor(Color.white)
        .frame(width: width, height: height)
        .background(Color.white)
        .cornerRadius(10)
    }
}

