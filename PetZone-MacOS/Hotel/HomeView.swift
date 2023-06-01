//
//  HomeView.swift
//  PetZone-MacOS
//
//  Created by MacBook Pro on 23/05/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var hotelViewModel = HotelViewModel()
    @State private var text = " "
    var twoColumnGrid = [GridItem(.flexible()),GridItem(.flexible())]
    var placeholder = "Select Price Range"
    var dropDownList = ["none","10.000-50.000", "50.000-100.000", "100.000-200.000", "200.000-500.000"]
    @State var value = ""
    @State private var searchText = ""
    
    @EnvironmentObject var orderViewModel: OrderViewModel
    
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
                                NavigationLink (destination: ProfileView()){
                                    Image("profilepict")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(1000)
                                }
                                .buttonStyle(PlainButtonStyle())
                               
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
                            HStack{
                                Text("Price Range")
                                Menu {
                                    ForEach(dropDownList, id: \.self){ client in
                                        Button(client) {
                                            self.value = client
                                            if(self.value == "None"){
                                                hotelViewModel.minimumPrice=0}
                                            else if(self.value == "10.000-50.000"){
                                                hotelViewModel.minimumPrice = 10000
                                                hotelViewModel.maximumPrice = 50000
                                            }
                                            else if(self.value == "50.000-100.000"){
                                                hotelViewModel.minimumPrice = 50000
                                                hotelViewModel.maximumPrice = 100000
                                            }
                                            else if(self.value == "100.000-200.000"){
                                                hotelViewModel.minimumPrice = 100000
                                                hotelViewModel.maximumPrice = 200000
                                            }
                                            else if(self.value == "200.000-500.000"){
                                                hotelViewModel.minimumPrice = 200000
                                                hotelViewModel.maximumPrice = 500000
                                            }
                                            else{
                                                hotelViewModel.minimumPrice=0
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
                        ForEach(hotelViewModel.rangePetHotels) { hotel in
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
        }.background(Color.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
