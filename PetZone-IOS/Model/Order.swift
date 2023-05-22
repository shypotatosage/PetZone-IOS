//
//  Order.swift
//  PetZone
//
//  Created by MacBook Pro on 18/05/23.
//

import Foundation

struct Order: Identifiable, Codable{
    let id: UUID
    var petName: String
    var petType: String
    var startDate: Date
    var endDate: Date
    var purchase: Int
    var petOwner: User
    var petHotel: PetHotel
    
    init(id: UUID  = UUID(), petName: String, petType: String, startDate: Date, endDate: Date, purchase: Int, user: User , petHotel: PetHotel) {
        self.id = id
        self.petName = petName
        self.petType = petType
        self.startDate = startDate
        self.endDate = endDate
        self.purchase = purchase
        self.petOwner = user
        self.petHotel = petHotel
    }
}

extension Order{
    static var emptyOrder: Order{
        Order(petName: "", petType: "", startDate: Date.now, endDate: Date.now,purchase: 0, user: User(name: "", email: "", address: "", phone_number: "", password: "", profile_pic: ""), petHotel: (PetHotel(name: "", description: "", city: "", address: "", phone_number: "", opening_hour: "", closing_hour: "", hotelpic: "", harga: 0, user: User(name: "", email: "", address: "", phone_number: "", password: "", profile_pic: ""))))
    }
}
