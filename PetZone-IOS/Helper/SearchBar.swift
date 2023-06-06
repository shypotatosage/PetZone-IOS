//
//  SearchBar.swift
//  PetZone
//
//  Created by MacBook Pro on 20/05/23.
//

import SwiftUI

//default search bar apple
struct SearchBar: View {
    @Binding var text: String
    
    @State private var isEditing = false
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        HStack {
            
            TextField("Search", text: $text)
                .textFieldStyle(.plain)
                .padding(7)
                .padding(.horizontal, 25)
#if !os(macOS)
                .background(Color(hex: "EDEDED"))
#endif
#if os(macOS)
                .background(Color(NSColor.textBackgroundColor))
#endif
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(hex: "d3d3d3"), lineWidth: 1)
                )
                .padding(.horizontal, 10)
                .onTapGesture {
#if !os(macOS)
                    self.isEditing = true
#endif
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                    
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
            }
        }
    }
}
