//
//  ItemHeader.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct ItemHeader: View {
    @State var title: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .bold()
            .padding(.top, 20)
    }
}

struct ItemHeader_Previews: PreviewProvider {
    static var previews: some View {
        ItemHeader(title: "Popular Items")
    }
}
