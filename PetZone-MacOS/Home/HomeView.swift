//
//  HomeView.swift
//  PetZone-MacOS
//
//  Created by MacBook Pro on 23/05/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var hotelViewModel = HotelViewModel()
    @State private var datestart = Date()
    @State private var dateend = Date()
    @State private var text = " "
    var twoColumnGrid = [GridItem(.flexible()),GridItem(.flexible())]
    var placeholder = "Select Price Range"
    var dropDownList = ["none","10.000-50.000", "50.000-100.000", "100.000-200.000", "200.000-500.000"]
    @State var value = ""
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
                                Image("profilepict")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(1000)
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
                        HStack{
                            DatePicker(
                                "Start Date",
                                selection: $datestart,
                                in: Date.now...,
                                displayedComponents: [.date]
                            ).padding(.horizontal)
                                .padding(.bottom)
                                .listRowSeparator(.hidden)
                                .listRowInsets(EdgeInsets())
                            DatePicker(
                                "End Date",
                                selection: $dateend,
                                in: datestart...,
                                displayedComponents: [.date]
                            ).padding(.horizontal)
                                .padding(.bottom)
                                .listRowSeparator(.hidden)
                                .listRowInsets(EdgeInsets())
                       
                            HStack{
                                Text("Price Range")
                                Menu {
                                    ForEach(dropDownList, id: \.self){ client in
                                        Button(client) {
                                            self.value = client
                                            if(self.value == "none"){
                                                hotelViewModel.searchText=""}
                                            else if(self.value == "10.000-50.000"){
                                                hotelViewModel.searchText="Pet zone"
                                            }
                                            else if(self.value == "50.000-100.000"){
                                                hotelViewModel.searchText="the paws"
                                            }
                                        }
                                    }
                                     } label: {
                                         VStack(spacing: 5){
                                             HStack{
                                                 Text(value.isEmpty ? placeholder : value)
                                                     .foregroundColor(value.isEmpty ? .gray : .black)
                                                 Spacer()
                                                 Image(systemName: "chevron.down")
                                                     .foregroundColor(Color.orange)
                                                     .font(Font.system(size: 20, weight: .bold))
                                             }
                                             .padding(.horizontal)
                                             Rectangle()
                                                 .fill(Color.orange)
                                                 .frame(height: 2)
                                         }
                                     }
                               }.padding(.horizontal)
                                .padding(.bottom)
                                .listRowSeparator(.hidden)
                                .listRowInsets(EdgeInsets())
//                            Button("Search"){
//                                hotelViewModel.searchText="Pet zone"
//                            }.padding(.horizontal)
//                                .padding(.bottom)
//                                .listRowSeparator(.hidden)
//                                .listRowInsets(EdgeInsets())
//                                .buttonBorderShape(.roundedRectangle)
                        }.padding(.horizontal)
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
                                    .padding(.horizontal, 32)
                            }
                            
                        }
                        .listRowSeparator(.hidden)
                    }
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
