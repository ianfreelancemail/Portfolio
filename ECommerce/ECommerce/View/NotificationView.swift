//
//  NotificationView.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct NotificationView: View {
    @ObservedObject private var viewModel = NotificationViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.notifications) { notif in
                NotificationViewRow(notification: notif)
                    .listRowBackground(Color.black)
                    .listRowSeparator(.visible)
            }
            .listStyle(.plain)
            .background(Color.black)
            .navigationBarTitle("Notifications", displayMode: .automatic)
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
