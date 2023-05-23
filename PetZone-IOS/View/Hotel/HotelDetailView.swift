//
//  HotelDetailView.swift
//  PetZone
//
//  Created by MacBook Pro on 18/05/23.
//

import SwiftUI

struct HotelDetailView: View {
    @State var choosenHotel : PetHotel

    var body: some View {
        NavigationView {
            ScrollView{
                VStack{
                    Image("dummypicthotel")
                        .resizable()
                        .scaledToFit()
                    Text(choosenHotel.name)
                        .customFont(.largeTitle)
                        .padding(.top)
                        .foregroundColor(Color(hex: "EF233C"))
                    Text(choosenHotel.address)
                    Text(choosenHotel.phone_number)
                    HStack{
                        Text(choosenHotel.opening_hour).customFont(.subheadline)
                        Text("-")
                            .customFont(.subheadline)
                        Text(choosenHotel.closing_hour)
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
                    Text(choosenHotel.address)
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
                    Text(choosenHotel.description)
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
        HotelDetailView(choosenHotel: PetHotel.sampleHotel)
    }
}
