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
        PetHotel(name: "", description: "", city: "", address: "", phone_number: "", opening_hour: "", closing_hour: "", hotel_pic: "", price: 0, user: User(name: "", email: "", address: "", phone_number: "", password: "", profile_pic: ""))
    }
    
    static let sampleHotel: PetHotel =
    PetHotel(
        name: "Pet Zone",
        description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//        coordinates: "Surabaya, Blue House Wp 2 No 26",
        city: "Surabaya",
        address: "Jalan WP 2 No 26",
        phone_number: "081212341234",
        opening_hour: "10.00",
        closing_hour: "22.00",
        hotel_pic: "",
        price: 80000,
        user : User(
            name: "Micheila Jiemesha",
            email: "mjiemesha@gmail.com",
            address: "Surabaya, Blue House Wp 2 No 26",
            phone_number: "081212341234",
            password: "asassa",
            profile_pic: ""
            )
        )
    
    static let sampleHotelList: [PetHotel] =
    [
        PetHotel(
            name: "Pet Zone",
            description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    //        coordinates: "Surabaya, Blue House Wp 2 No 26",
            city: "Surabaya",
            address: "Jalan WP 2 No 26",
            phone_number: "081212341234",
            opening_hour: "10.00",
            closing_hour: "22.00",
            hotel_pic: "",
            price: 80000,
            user : User(
                name: "Micheila Jiemesha",
                email: "mjiemesha@gmail.com",
                address: "Surabaya, Blue House Wp 2 No 26",
                phone_number: "081212341234",
                password: "asassa",
                profile_pic: ""
                )
        ),
        PetHotel(
            name: "Pet Zone",
            description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    //        coordinates: "Surabaya, Blue House Wp 2 No 26",
            city: "Surabaya",
            address: "Jalan WP 2 No 26",
            phone_number: "081212341234",
            opening_hour: "10.00",
            closing_hour: "22.00",
            hotel_pic: "",
            price: 80000,
            user : User(
                name: "Micheila Jiemesha",
                email: "mjiemesha@gmail.com",
                address: "Surabaya, Blue House Wp 2 No 26",
                phone_number: "081212341234",
                password: "asassa",
                profile_pic: ""
                )
        ),
        PetHotel(
            name: "Pet Zone",
            description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    //        coordinates: "Surabaya, Blue House Wp 2 No 26",
            city: "Surabaya",
            address: "Jalan WP 2 No 26",
            phone_number: "081212341234",
            opening_hour: "10.00",
            closing_hour: "22.00",
            hotel_pic: "",
            price: 80000,
            user : User(
                name: "Micheila Jiemesha",
                email: "mjiemesha@gmail.com",
                address: "Surabaya, Blue House Wp 2 No 26",
                phone_number: "081212341234",
                password: "asassa",
                profile_pic: ""
                )
        )
     ]
}

