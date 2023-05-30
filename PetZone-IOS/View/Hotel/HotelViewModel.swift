//
//  HomeViewModel.swift
//  PetZone-IOS
//
//  Created by MacBook Pro on 25/05/23.
//

import Foundation

//view model hotel
class HotelViewModel: ObservableObject {
    
    @Published var petHotels = [PetHotel]()
    @Published var searchText: String = ""
    @Published var text: Int = 0
    @Published var minimumPrice: Double = 0
    @Published var maximumPrice: Double = 80000
    var filteredPetHotels: [PetHotel] {
        guard !searchText.isEmpty else { return petHotels }
        
        return petHotels.filter { petHotel in
            petHotel.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    var rangePetHotels: [PetHotel] {
        guard (minimumPrice != 0) else { return filteredPetHotels }
        
        return filteredPetHotels.filter { petHotel in
            petHotel.price >= Int(minimumPrice) && petHotel.price <= Int(maximumPrice)
        }
    }
    
    
    init(){
        petHotels = PetHotel.sampleHotelList
    }
}
