//
//  HomeView.swift
//  ECommerce
//
//  Created by Ian Talisic on 23/04/2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject private var viewModel = HomeViewModel()
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                let spacing: CGFloat = 12
                let column: CGFloat = UIDevice.current.userInterfaceIdiom == .phone ? 3 : 6
                let width = (geometry.size.width - (column * spacing)) / column
                
                ScrollView {
                    VStack(alignment: .leading) {
                        BannerScrollView()
                        Section(header: ItemHeader(title: "Popular Item")) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(viewModel.items) { item in
                                        NavigationLink {
                                            ItemDetailView()
                                        } label: {
                                            ItemCard(item: item, width: width, height: width)
                                        }
                                    }
                                }
                            }
                        }
                        Section(header: ItemHeader(title: "Category")) {
                            LazyVGrid(columns: columns, spacing: spacing) {
                                ForEach(viewModel.categories, id: \.self) { category in
                                    CategoryRow(category: category, onTap: { cat in
                                        print(cat.name, cat.image)
                                    })
                                    .frame(width: width, height: width)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 10)
            }
            .background(Color.black)
            .foregroundColor(Color.white)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
