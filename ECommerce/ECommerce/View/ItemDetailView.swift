//
//  ItemDetailVie.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct ItemDetailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        List {
            
        }
        .navigationBarTitle("Item Detail", displayMode: .automatic)
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "chevron.left")
                .foregroundColor(Color.white)
        }))
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView()
    }
}
