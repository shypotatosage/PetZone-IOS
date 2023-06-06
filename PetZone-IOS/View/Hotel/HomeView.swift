//
//  HomeView.swift
//  PetZone
//
//  Created by MacBook Pro on 19/05/23.
//

import SwiftUI

//tampilan home view
struct HomeView: View {
    @StateObject var hotelViewModel = HotelViewModel()
    @State private var searchText = ""
    @Binding public var selected: Int
    @EnvironmentObject var orderViewModel: OrderViewModel
    @State private var date = Date()
    @State private var text = ""
    var placeholder = "Select Price Range"
    var dropDownList = ["None","10.000-50.000", "50.000-100.000", "100.000-200.000", "200.000-500.000"]
    @State var value = ""
    
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
                            }
                            .padding(.horizontal)
                            .padding(.top)
                        }
                        .padding(.horizontal)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                        
                        SearchBar(text: $hotelViewModel.searchText)
                            .padding(.horizontal)
                            .padding(.vertical)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets())
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
                                            .foregroundColor(Color(hex: "EF233C"))
                                        .customFont(.subheadline)                                         }
                                    .padding(.horizontal)
                                    Rectangle()
                                        .fill(Color(hex: "EF233C"))
                                        .frame(height: 2)
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding()
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                        
                        ForEach(hotelViewModel.rangePetHotels) { hotel in
                            ZStack {
                                NavigationLink {
                                    HotelDetailView(chosenHotel: hotel)
                                        .environmentObject(orderViewModel)
                                } label: {
                                    EmptyView()
                                }
                                .opacity(0)
                                
                                HotelCardView(width: geo.size.width, petHotel: hotel)
                                    .padding(.vertical, 8)
                            }
                        }
                        .listRowSeparator(.hidden)
                        
                        Spacer(minLength: 72)
                    }
                }
                .listStyle(PlainListStyle())
            }
        }
    }
}

//tampilan home view preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(selected: .constant(0))
            .environmentObject(OrderViewModel())
    }
}
