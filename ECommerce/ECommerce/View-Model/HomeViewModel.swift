//
//  ItemViewModel.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var searchText = ""
    @Published var items = [Item]()
    
    let categories = [
        Category(name: "Consumer Electronics", image: "technology"),
        Category(name: "Food and Beverage", image: "fast-food"),
        Category(name: "Personal care and beauty", image: "beauty"),
        Category(name: "Home and Garden", image: "home_and_garden"),
        Category(name: "Toys and Hobbies", image: "toys_and_hobbies"),
        Category(name: "Automotive", image: "automotive"),
        Category(name: "Health and Wellness", image: "health_and_wellness"),
        Category(name: "Child Products", image: "baby_products"),
        Category(name: "Pet supplies", image: "pet_supplies")
    ]
    
    init() {
        fetchPopularItems()
    }
    
    func fetchPopularItems() {
        let itemsAPI = ItemsAPI()
        itemsAPI.getItems { items in
            if let value = items {
                self.items = value
            }
        }
    }
}
