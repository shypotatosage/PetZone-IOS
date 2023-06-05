//
//  ProfileViewModel.swift
//  PetZone-IOS
//
//  Created by MacBook Pro on 05/06/23.
//

import Foundation

//view model profile
class ProfileViewModel: ObservableObject {
    @Published var user: User
    
    init(){
        user = User.sampleUser
    }
}
