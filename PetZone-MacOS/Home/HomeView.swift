//
//  HomeView.swift
//  PetZone-MacOS
//
//  Created by MacBook Pro on 23/05/23.
//

import SwiftUI

struct HomeView: View {
    var twoColumnGrid = [GridItem(.flexible()),GridItem(.flexible())]
    
    
    @State private var searchText = ""
    
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
                                Image("dummypicthotel")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(1000)
                            }
                            .padding()
                        }
                        .padding(.horizontal)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                        
                        SearchBar(text: $searchText)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets())
                        
                        ForEach(PetHotel.sampleHotelList) { hotel in
                            ZStack {
                                NavigationLink {
                                    HotelDetailView(choosenHotel: hotel)
                                } label: {
                                    EmptyView()
                                }
                                .opacity(0)
                                
                                HotelCardView(width: geo.size.width, petHotel: hotel)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 32)
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
        HomeView()
    }
}
