//
//  OrderListView.swift
//  PetZone
//
//  Created by Marsha Likorawung  on 22/05/23.
//

import SwiftUI

struct OrderListView: View {
    @State private var searchText = ""
    var body: some View {
        GeometryReader { geo in
            NavigationStack {
                VStack {
                    List {
                        VStack {
                            HStack {
                                Text("Order History")
                                    .customFont(.largeTitle)
                                    .foregroundColor(Color(hex: "EF233C"))
                            }
                            .padding()
                        }
                        .padding(.horizontal)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                        SearchBar(text: $searchText)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets())
                        ForEach(Order.sampleOrderList) { order in
                            ZStack {
                                NavigationLink {
                                    OrderDetailView()
                                } label: {
                                    EmptyView()
                                }
                                .opacity(0)
                                
                                OrderCardView(width: geo.size.width, order: order)
                                    .padding(.vertical, 8)
                            }
                            .listRowSeparator(.hidden)
                        }
                    }
                    .listStyle(PlainListStyle())
                }
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}
