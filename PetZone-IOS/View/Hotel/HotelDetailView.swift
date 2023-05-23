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
        NavigationStack {
            ScrollView{
                VStack{
                    Image(choosenHotel.hotel_pic)
                        .resizable()
                        .scaledToFit()
                    
                    Text(choosenHotel.name)
                        .customFont(.largeTitle)
                        .padding(.top)
                        .foregroundColor(Color(hex: "EF233C"))
                    HStack{
                        Text("Rp.")
                        Text(String(choosenHotel.price))
                    }
                    .customFont(.subheadline)
                    
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

//                    NavigationLink {
//                        TransactionView()
//                    } label: {
//                        Text("Order")
//                            .customFont(.subheadline)
//                            .foregroundColor(.white)
//                            .padding([.horizontal], 30)
//                            .padding([.vertical], 10)
//                            .background(Color(hex: "EF233D"))
//                            .cornerRadius(30)
//                            .overlay {
//                                RoundedRectangle(cornerRadius: 30)
//                                    .stroke(Color(hex: "E91732"), lineWidth: 1)
//                            }
//                            .shadow(color: Color(hex: "BABABA"), radius: 3)
//                    }
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
