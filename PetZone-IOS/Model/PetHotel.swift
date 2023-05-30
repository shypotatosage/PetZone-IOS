//
//  PetHotel.swift
//  PetZone
//
//  Created by MacBook Pro on 18/05/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct PetHotel: Identifiable, Codable{
    let id: UUID
    var name: String
    var description: String
//    var coordinates: CoordinateSpace
//    var coordinates: String
    var city: String
    var address: String
    var phone_number: String
    var opening_hour: String
    var closing_hour: String
    var hotel_pic: String
    var price: Int
    var user: User
    
    init(id: UUID  = UUID(), name: String, description: String, city: String, address: String, phone_number: String, opening_hour: String, closing_hour: String, hotel_pic: String, price: Int ,user: User) {
        self.id = id
        self.name = name
        self.description = description
//        self.coordinates = coordinates
        self.city = city
        self.address = address
        self.phone_number = phone_number
        self.opening_hour = opening_hour
        self.closing_hour = closing_hour
        self.hotel_pic = hotel_pic
        self.price = price
        self.user = user
    }
}


extension PetHotel{
    static var emptyHotel: PetHotel{
        PetHotel(name: "", description: "", city: "", address: "", phone_number: "", opening_hour: "", closing_hour: "", hotel_pic: "", price: 0, user: User(name: "", email: "", address: "", phone_number: "", profile_pic: ""))
    }
    
    static let sampleHotel: PetHotel =
    PetHotel(
        name: "Pet Zone",
        description: "Welcome to Pet Zone, the ultimate destination for pet owners seeking a comfortable, safe, and fun-filled stay for their furry friends. Our pet hotel is designed with your pet's needs in mind, ensuring that they receive the highest level of care and attention during their stay.",
//        coordinates: "Surabaya, Blue House Wp 2 No 26",
        city: "Surabaya",
        address: "Jalan WP 2 No 26",
        phone_number: "081212341234",
        opening_hour: "10.00",
        closing_hour: "22.00",
        hotel_pic: "dummypicthotel",
        price: 80000,
        user : User.sampleUser
        )
    
    static let sampleHotelList: [PetHotel] =
    [
        PetHotel(
            name: "K9 Resorts",
            description: "Welcome to K9 Resorts, the ultimate luxury pet hotel for discerning pet owners who want nothing but the best for their furry friends. Our pet hotel is designed to offer the highest level of comfort, safety, and fun, ensuring that your pets receive a truly unforgettable experience.",
    //        coordinates: "Surabaya, Blue House Wp 2 No 26",
            city: "Jakarta",
            address: "Jalan Kemang Selatan VIII No. 23",
            phone_number: "082192243200",
            opening_hour: "06.00",
            closing_hour: "20.00",
            hotel_pic: "dummypicthotel1",
            price: 120000,
            user : User.sampleUser
        ),
        PetHotel(
            name: "Pet Zone",
            description: "Welcome to Pet Zone, the ultimate destination for pet owners seeking a comfortable, safe, and fun-filled stay for their furry friends. Our pet hotel is designed with your pet's needs in mind, ensuring that they receive the highest level of care and attention during their stay.",
    //        coordinates: "Surabaya, Blue House Wp 2 No 26",
            city: "Surabaya",
            address: "Jalan Kebon Jeruk Raya No. 99",
            phone_number: "08118732379",
            opening_hour: "10.00",
            closing_hour: "22.00",
            hotel_pic: "dummypicthotel",
            price: 80000,
            user : User.sampleUser
        ),
        PetHotel(
            name: "The Paws",
            description: "Welcome to The Paws Pet Hotel, where your furry friends can stay in comfort and luxury! Our pet hotel is designed to provide your beloved pets with a safe and comfortable environment while you are away.",
    //        coordinates: "Surabaya, Blue House Wp 2 No 26",
            city: "Makassar",
            address: "Jalan Raya Makassar KM 26 No. 17",
            phone_number: "081212341234",
            opening_hour: "12.00",
            closing_hour: "18.00",
            hotel_pic: "dummypethotel2",
            price: 73000,
            user : User.sampleUser
        )
     ]
}

