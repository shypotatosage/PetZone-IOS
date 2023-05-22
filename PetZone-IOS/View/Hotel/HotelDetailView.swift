//
//  HotelDetailView.swift
//  PetZone
//
//  Created by MacBook Pro on 18/05/23.
//

import SwiftUI

struct HotelDetailView: View {
    @State private var newHotel = PetHotel.sampleHotel
    var body: some View {
        NavigationView {
            ScrollView{
                VStack{
                    Image("dummypicthotel")
                        .resizable()
                        .scaledToFit()
                    Text(newHotel.name)
                        .customFont(.largeTitle)
                        .padding(.top)
                        .foregroundColor(Color(hex: "EF233C"))
                    Text(newHotel.address)
                    Text(newHotel.phone_number)
                    HStack{
                        Text(newHotel.opening_hour).customFont(.subheadline)
                        Text("-")
                            .customFont(.subheadline)
                        Text(newHotel.closing_hour)
                            .customFont(.subheadline)
                    }
                    Group{
                        HStack {
                            Image(systemName: "location.fill").foregroundColor(.gray)
                            Text("Lokasi").customFont(.subheadline)
                        }
                        .padding(.top)
                        .padding(.leading)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                    }
                    Text(newHotel.address)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                    Group{
                        HStack {
                            Image(systemName: "house.fill").foregroundColor(.gray)
                            Text("Deskripsi").customFont(.subheadline)
                        }
                        .padding(.top)
                        .padding(.leading)
                        
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                    }
                    Text(newHotel.description)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                    Button("Order"){
                    }
                    .padding(.top)
                    .buttonStyle(DefaultButton())
                    .bold()
                }
            }
        }
    }
}

struct HotelDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HotelDetailView()
    }
}
