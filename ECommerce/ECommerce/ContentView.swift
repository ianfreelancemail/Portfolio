//
//  ContentView.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedTab = 0
    
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            NotificationView()
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
            PostItemView()
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
                        Text("Post Item")
                    }
                    .scaleEffect(1.5)
                }
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

