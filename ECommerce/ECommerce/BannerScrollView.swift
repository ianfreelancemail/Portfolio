//
//  BannerScrollView.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct BannerScrollView: View {
    @ObservedObject private var viewModel = BannerScrollViewModel()

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(viewModel.banners) { banner in
                    BannerView(banner: banner)
                        .frame(width: UIScreen.main.bounds.width)
                }
            }
        }
        .onAppear {
            
        }
    }
}

struct BannerView: View {
    var banner: Banner
    var body: some View {
        ZStack {
            Image(banner.image)
                .resizable()
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(banner.title)
                    .font(.headline)
                Text(banner.description)
                    .font(.subheadline)
            }
        }
    }
}

struct Banner: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
}
