//
//  Category.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct Category: Identifiable, Decodable, Hashable {
    var id = UUID()
    var name: String
    var image: String
}
