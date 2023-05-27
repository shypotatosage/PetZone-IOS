//
//  HomeView.swift
//  PetZone
//
//  Created by MacBook Pro on 19/05/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var hotelViewModel = HotelViewModel()
    @State private var searchText = ""
    
    @Binding public var selected: Int
    
    var body: some View {
        GeometryReader { geo in
            NavigationStack {
                VStack {
                    List {
                        VStack {
                            HStack {
                                Text("Hotel List")
                                    .customFont(.largeTitle)
                                    .foregroundColor(Color(hex: "EF233C"))
                                Spacer()
                                Button(action: {selected = 2}){
                                    Image("profilepict")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(1000)
                                }
                                
                            }
                            .padding()
                        }
                        .padding(.horizontal)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                        
                        SearchBar(text: $hotelViewModel.searchText)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets())
                        ForEach(hotelViewModel.filteredPetHotels) { hotel in
                            ZStack {
                                NavigationLink {
                                    HotelDetailView(choosenHotel: hotel)
                                } label: {
                                    EmptyView()
                                }
                                .opacity(0)
                                
                                HotelCardView(width: geo.size.width, petHotel: hotel)
                                    .padding(.vertical, 8)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    Spacer(minLength: 60)
                }
                .listStyle(PlainListStyle())
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(selected: .constant(0))
    }
}
