//
//  OrderListView.swift
//  PetZone
//
//  Created by Marsha Likorawung  on 22/05/23.
//

import SwiftUI

//untuk tampilan order list
struct OrderListView: View {
    @EnvironmentObject var orderViewModel: OrderViewModel
    
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
                        
                        SearchBar(text: $orderViewModel.searchText)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets())
                        
                        ForEach(orderViewModel.filteredOrders) { order in
                            ZStack {
                                NavigationLink {
                                    OrderDetailView(order: order)
                                } label: {
                                    EmptyView()
                                }
                                .opacity(0)
                                
                                OrderCardView(width: geo.size.width, order: order)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 32)
                            }
                            
                        } .listRowSeparator(.hidden)
                    }
                    .listStyle(PlainListStyle())
                }
            }
        }
    }
}

//untuk preview order list
struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}
