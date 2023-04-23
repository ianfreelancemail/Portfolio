//
//  Notification.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct Notification: Identifiable, Decodable, Hashable {
    let id: String
    let name: String
    let description: String
    let type: Int
    let image: String
    let isRead: Bool
}
