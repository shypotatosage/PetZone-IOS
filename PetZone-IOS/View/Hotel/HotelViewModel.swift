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
    
    var filteredPetHotels: [PetHotel] {
        guard !searchText.isEmpty else { return petHotels }
        
        return petHotels.filter { petHotel in
            petHotel.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    init(){
        petHotels = PetHotel.sampleHotelList
    }
}
