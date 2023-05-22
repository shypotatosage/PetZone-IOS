//
//  User.swift
//  PetZone
//
//  Created by MacBook Pro on 18/05/23.
//

import Foundation

struct User : Identifiable, Codable{
    let id: UUID
    var name: String
    var email: String
    var address: String
    var phone_number: String
    var profile_pic: String
    
    init(id: UUID = UUID(), name: String, email: String, address: String, phone_number: String, profile_pic: String) {
        self.id = id
        self.name = name
        self.email = email
        self.address = address
        self.phone_number = phone_number
        self.profile_pic = profile_pic
    }
}

extension User{
    static let sampleUser: User =
    User(
        name: "Micheila Jiemesha",
        email: "mjiemesha@gmail.com",
        address: "Surabaya, Blue House Wp 2 No 26",
        phone_number: "081212341234",
        profile_pic: ""
        )
}

