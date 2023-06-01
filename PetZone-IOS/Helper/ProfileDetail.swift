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
    
    #if os(iOS)
    let inputWidth = UIScreen.main.bounds.size.width > 400.0 ? 400.0 : Double.infinity
    #elseif os(macOS)
    let inputWidth = 300.0
    #endif
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .padding(.horizontal)
            Text(content)
            Spacer()
        }
        .frame(maxWidth: inputWidth)
        .padding(.horizontal)
        .padding(.bottom, 20)
    }
}
