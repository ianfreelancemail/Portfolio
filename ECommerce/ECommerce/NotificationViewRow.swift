//
//  NotificationRow.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct NotificationViewRow: View {
    var notification: Notification
    var body: some View {
        HStack(alignment: .top, content: {
            Image("elmo")
                .resizable()
                .frame(width: 40, height: 40, alignment: .leading)
                .cornerRadius(5)
                .clipped()
            
            VStack(alignment: .leading) {
                Text(notification.name)
                    .font(.callout)
                    .bold(!notification.isRead)
                    .foregroundColor(.white)
                
                Text(notification.description)
                    .font(.footnote)
                    .lineLimit(2)
                    .truncationMode(.tail)
                    .foregroundColor(.white)
            }
        })
        
    }
}
