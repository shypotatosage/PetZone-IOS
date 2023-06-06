//
//  DefaultButton.swift
//  PetZone
//
//  Created by MacBook Pro on 18/05/23.
//

import SwiftUI

//tombol default petzone
struct DefaultButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.all)
            .padding(.horizontal)
            .background(Color(hex: "EF233D"))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}
