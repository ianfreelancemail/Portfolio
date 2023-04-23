//
//  AdBanner.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct AdBanner: View {
    
    var body: some View {
        HStack {
            Image("ad_banner")
                .resizable()
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(Color.green)
        }
        .background(Color.white)
    }
}
