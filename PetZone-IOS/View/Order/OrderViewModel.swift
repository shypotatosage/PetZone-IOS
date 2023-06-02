//
//  OrderViewModel.swift
//  PetZone-IOS
//
//  Created by Marsha Likorawung  on 23/05/23.
//

import Foundation

//view model order
class OrderViewModel: ObservableObject {
    
    @Published var orders = [Order]()
    @Published var searchText: String = ""
    
    var filteredOrders: [Order] {
        guard !searchText.isEmpty else { return orders }
        
        return orders.filter { order in
            order.pet_hotel.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    init(){
        orders = Order.sampleOrderList
    }
    
    func addOrder(newOrder: Order) {
        orders.append(newOrder)
    }
}
