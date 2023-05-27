//
//  ProfileDetail.swift
//  PetZone-IOS
//
//  Created by William j. Wongge on 27/05/23.
//

import SwiftUI

struct ProfileDetail: View {
    let icon: String
    let content: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .padding(.horizontal)
            Text(content)
            Spacer()
        }
        .background(in: RoundedRectangle(cornerRadius: 8).inset(by: -15))
        .backgroundStyle(
            Color(hex: "F0F0F0")
            .gradient
            .shadow(
                .drop(
                    radius: 1, x: 2, y: 2
                )
            )
        )
        .frame(width: .infinity)
        .padding(.horizontal)
        .padding(.bottom, 40.0)
    }
}
