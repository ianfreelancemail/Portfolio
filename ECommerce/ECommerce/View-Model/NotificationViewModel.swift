//
//  NotificationViewModel.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

class NotificationViewModel: ObservableObject {
    @Published var notifications: [Notification] = []
    
    init() {
        notifications = [
            Notification(id: "1", name: "Eyan", description: "The Quick brown fox jumps over the lazy dog and it keeps jumping until he gets tired.", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "The Quick brown fox jumps over the lazy dog and it keeps jumping until he gets tired.", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "The Quick brown fox jumps over the lazy dog and it keeps jumping until he gets tired.", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "The Quick brown fox jumps over the lazy dog and it keeps jumping until he gets tired.", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "The Quick brown fox jumps over the lazy dog and it keeps jumping until he gets tired.", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "The Quick brown fox jumps over the lazy dog and it keeps jumping until he gets tired.", type: 1, image: "elmo", isRead: false),
            
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: true),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: true),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: true),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: true),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: false),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: true),
            Notification(id: "1", name: "Eyan", description: "Is is item still available?", type: 1, image: "elmo", isRead: true)
        ]
    }
}
