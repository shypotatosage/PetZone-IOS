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
        Order(petName: "", petType: "", startDate: Date.now, endDate: Date.now,purchase: 0, user: User(name: "", email: "", address: "", phone_number: "",  profile_pic: ""), petHotel: (PetHotel(name: "", description: "", city: "", address: "", phone_number: "", opening_hour: "", closing_hour: "", hotel_pic: "", price: 0, user: User(name: "", email: "", address: "", phone_number: "", profile_pic: ""))))
    }
    
    static var sampleOrder: Order{
        Order(petName: "Si Unyil", petType: "Asu", startDate: Date.now, endDate: Date.now,purchase: 80000, user: User(
            name: "Micheila Jiemesha",
            email: "mjiemesha@gmail.com",
            address: "Surabaya, Blue House Wp 2 No 26",
            phone_number: "081212341234",
            profile_pic: ""
        ), petHotel: PetHotel(
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
                profile_pic: ""
            )
        ))
    }
    
    static let sampleOrderList: [Order] =
    [
        Order(petName: "Si Unyil", petType: "Asu", startDate: Date.now, endDate: Date.now,purchase: 80000, user: User(
            name: "Micheila Jiemesha",
            email: "mjiemesha@gmail.com",
            address: "Surabaya, Blue House Wp 2 No 26",
            phone_number: "081212341234",
            profile_pic: ""
        ), petHotel: PetHotel(
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
                profile_pic: ""
            )
        ))
        ,        Order(petName: "Si Unyil", petType: "Asu", startDate: Date.now, endDate: Date.now,purchase: 80000, user: User(
            name: "Micheila Jiemesha",
            email: "mjiemesha@gmail.com",
            address: "Surabaya, Blue House Wp 2 No 26",
            phone_number: "081212341234",
            profile_pic: ""
        ), petHotel: PetHotel(
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
                profile_pic: ""
            )
        ))
        ,        Order(petName: "Si Unyil", petType: "Asu", startDate: Date.now, endDate: Date.now,purchase: 80000, user: User(
            name: "Micheila Jiemesha",
            email: "mjiemesha@gmail.com",
            address: "Surabaya, Blue House Wp 2 No 26",
            phone_number: "081212341234",
            profile_pic: ""
        ), petHotel: PetHotel(
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
                profile_pic: ""
            )
        ))
        ,        Order(petName: "Si Unyil", petType: "Asu", startDate: Date.now, endDate: Date.now,purchase: 80000, user: User(
            name: "Micheila Jiemesha",
            email: "mjiemesha@gmail.com",
            address: "Surabaya, Blue House Wp 2 No 26",
            phone_number: "081212341234",
            profile_pic: ""
        ), petHotel: PetHotel(
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
                profile_pic: ""
            )
        ))
        ,        Order(petName: "Si Unyil", petType: "Asu", startDate: Date.now, endDate: Date.now,purchase: 80000, user: User(
            name: "Micheila Jiemesha",
            email: "mjiemesha@gmail.com",
            address: "Surabaya, Blue House Wp 2 No 26",
            phone_number: "081212341234",
            profile_pic: ""
        ), petHotel: PetHotel(
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
                profile_pic: ""
            )
        ))
        ,        Order(petName: "Si Unyil", petType: "Asu", startDate: Date.now, endDate: Date.now,purchase: 80000, user: User(
            name: "Micheila Jiemesha",
            email: "mjiemesha@gmail.com",
            address: "Surabaya, Blue House Wp 2 No 26",
            phone_number: "081212341234",
            profile_pic: ""
        ), petHotel: PetHotel(
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
                profile_pic: ""
            )
        ))
        
    ]
    
}
