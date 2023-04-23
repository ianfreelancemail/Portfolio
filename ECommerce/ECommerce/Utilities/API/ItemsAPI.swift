//
//  ItemsAPI.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI
import Foundation

struct ItemsAPI {
    let sampleData = [
        Item(
            name: "Macbook Pro",
             description: "An apple laptop that has a full security and of couse can be used for various types of work",
            image: "macbook",
            price: 2000
        ),
        Item(
            name: "Macbook Pro",
             description: "An apple laptop that has a full security and of couse can be used for various types of work",
            image: "macbook",
            price: 2000
        ),
        Item(
            name: "Macbook Pro",
             description: "An apple laptop that has a full security and of couse can be used for various types of work",
            image: "macbook",
            price: 2000
        ),
        Item(
            name: "Macbook Pro",
             description: "An apple laptop that has a full security and of couse can be used for various types of work",
            image: "macbook",
            price: 2000
        )
    ]
    
    func getItems(completion: @escaping ([Item]?) -> Void) {
        // Make API call
        let url = URL(string: "https://example.com/api/items")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let items = try JSONDecoder().decode([Item].self, from: data)
                    completion(items)
                }catch{
                    completion(sampleData)
                }
               
            } else {
                print(error ?? "Unknown error")
            }
        }.resume()
    }
}
