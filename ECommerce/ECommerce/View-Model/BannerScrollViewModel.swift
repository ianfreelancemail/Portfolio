//
//  BannerScrollViewModel.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

class BannerScrollViewModel: ObservableObject {
    @Published var banners: [Banner] = []
    @Published var currentPage = 0
    
    init() {
        banners = [
            Banner(image: "banner", title: "", description: ""),
            Banner(image: "banner", title: "", description: ""),
            Banner(image: "banner", title: "", description: ""),
            Banner(image: "banner", title: "", description: ""),
            Banner(image: "banner", title: "", description: ""),
            Banner(image: "banner", title: "", description: "")
        ]
    }
}
