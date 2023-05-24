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
        Order(petName: "", petType: "", startDate: Date.now, endDate: Date.now,purchase: 0, user: User.sampleUser, petHotel: PetHotel.emptyHotel)
    }
    
    static var sampleOrder: Order{
        Order(petName: "Oreo", petType: "Anjing", startDate: Date.now, endDate: Date.now,purchase: 80000, user: User.sampleUser, petHotel: PetHotel.sampleHotel)
    }
    
    static let sampleOrderList: [Order] =
    [
        Order(petName: "Poppy", petType: "Cat", startDate: Date.now, endDate: Date.now,purchase: 70000, user: User.sampleUser, petHotel: PetHotel.sampleHotelList[1])
        ,        Order(petName: "Chiki", petType: "Hamster", startDate: Date.now, endDate: Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!,purchase: 80000, user: User.sampleUser, petHotel: PetHotel.sampleHotelList[0])
        ,        Order(petName: "Blacky", petType: "Dog", startDate: Date.now, endDate:  Calendar.current.date(byAdding: .day, value: -15, to: Date.now)!,purchase: 90000, user: User.sampleUser, petHotel: PetHotel.sampleHotelList[2])
        ,        Order(petName: "Pochita", petType: "Dog", startDate: Date.distantPast, endDate:  Calendar.current.date(byAdding: .day, value: -30, to: Date.now)!,purchase: 50000, user: User.sampleUser, petHotel: PetHotel.sampleHotelList[1])
        ,        Order(petName: "Yuro", petType: "Gerbil", startDate: Date.now, endDate:  Calendar.current.date(byAdding: .day, value: -31, to: Date.now)!,purchase: 45000, user: User.sampleUser, petHotel: PetHotel.sampleHotelList[2])
        ,        Order(petName: "Viper", petType: "Gecko", startDate: Date.now, endDate:  Calendar.current.date(byAdding: .day, value: -7, to: Date.now)!,purchase: 20000, user: User.sampleUser, petHotel: PetHotel.sampleHotelList[0])
        
    ]
    
}
