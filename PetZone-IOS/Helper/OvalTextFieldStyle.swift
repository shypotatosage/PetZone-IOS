//
//  OvalTextFieldStyle.swift
//  PetZone
//
//  Created by MacBook Pro on 21/05/23.
//

import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(hex: "d3d3d3"), lineWidth: 1)
            )
            .cornerRadius(20)
            .shadow(color: Color(hex: "BABABA"), radius: 4)
    }
}
