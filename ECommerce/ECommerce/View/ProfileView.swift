//
//  ProfileView.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            List {
         
            }
            .listStyle(.plain)
            .background(Color.black)
            .navigationBarTitle("Profile", displayMode: .automatic)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
