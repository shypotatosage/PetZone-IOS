//
//  OrderViewModel.swift
//  PetZone-IOS
//
//  Created by Marsha Likorawung  on 23/05/23.
//

import Foundation

class OrderViewModel: ObservableObject {

    @Published var orders = [Order]()
    @Published var searchText: String = ""

    var filteredOrders: [Order] {
        guard !searchText.isEmpty else { return orders }

        return orders.filter { order in
            order.petHotel.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    init(){
        orders = Order.sampleOrderList
    }
    
    
    
}
