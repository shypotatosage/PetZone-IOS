//
//  Order.swift
//  PetZone
//
//  Created by MacBook Pro on 18/05/23.
//

import Foundation

//model order
struct Order: Identifiable, Codable{
    let id: UUID
    var pet_name: String
    var pet_type: String
    var start_date: Date
    var end_date: Date
    var purchase: Int
    var pet_owner: User
    var pet_hotel: PetHotel
    
    init(id: UUID  = UUID(), pet_name: String, pet_type: String, start_date: Date, end_date: Date, purchase: Int, pet_owner: User , pet_hotel: PetHotel) {
        self.id = id
        self.pet_name = pet_name
        self.pet_type = pet_type
        self.start_date = start_date
        self.end_date = end_date
        self.purchase = purchase
        self.pet_owner = pet_owner
        self.pet_hotel = pet_hotel
    }
}

//isi order
extension Order{
    static var emptyOrder: Order{
        Order(pet_name: "", pet_type: "", start_date: Date.now, end_date: Date.now,purchase: 0, pet_owner: User.sampleUser, pet_hotel: PetHotel.emptyHotel)
    }
    
    static var sampleOrder: Order{
        Order(pet_name: "Oreo", pet_type: "Dog", start_date: Date.now, end_date: Date.now,purchase: 80000, pet_owner: User.sampleUser, pet_hotel: PetHotel.sampleHotel)
    }
    
    static let sampleOrderList: [Order] =
    [
        Order(pet_name: "Poppy", pet_type: "Cat", start_date: Date.now, end_date: Date.now, purchase: 70000, pet_owner: User.sampleUser, pet_hotel: PetHotel.sampleHotelList[1])
        ,        Order(pet_name: "Chiki", pet_type: "Hamster", start_date: Date.now, end_date: Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!,purchase: 80000, pet_owner: User.sampleUser, pet_hotel: PetHotel.sampleHotelList[0])
        ,        Order(pet_name: "Blacky", pet_type: "Dog", start_date: Date.now, end_date:  Calendar.current.date(byAdding: .day, value: -15, to: Date.now)!,purchase: 90000, pet_owner: User.sampleUser, pet_hotel: PetHotel.sampleHotelList[2])
        ,        Order(pet_name: "Pochita", pet_type: "Dog", start_date: Date.distantPast, end_date:  Calendar.current.date(byAdding: .day, value: -30, to: Date.now)!,purchase: 50000, pet_owner: User.sampleUser, pet_hotel: PetHotel.sampleHotelList[1])
        ,        Order(pet_name: "Yuro", pet_type: "Gerbil", start_date: Date.now, end_date:  Calendar.current.date(byAdding: .day, value: -31, to: Date.now)!,purchase: 45000, pet_owner: User.sampleUser, pet_hotel: PetHotel.sampleHotelList[2])
        ,        Order(pet_name: "Viper", pet_type: "Gecko", start_date: Date.now, end_date:  Calendar.current.date(byAdding: .day, value: -7, to: Date.now)!,purchase: 20000, pet_owner: User.sampleUser, pet_hotel: PetHotel.sampleHotelList[0])
        
    ]
    
}
