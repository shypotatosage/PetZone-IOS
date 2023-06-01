//
//  HotelDetailView.swift
//  PetZone
//
//  Created by MacBook Pro on 18/05/23.
//

import SwiftUI

struct HotelDetailView: View {
    @State var choosenHotel : PetHotel
    
    @EnvironmentObject var orderViewModel: OrderViewModel

    var body: some View {
        NavigationStack {
            ScrollView{
                VStack{
                    Group{
                        Image(choosenHotel.hotel_pic)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity, maxHeight: 300)
                            .clipped()
                        
                        Text(choosenHotel.name)
                            .customFont(.largeTitle)
                            .padding(.top)
                            .foregroundColor(Color(hex: "EF233C"))
                        HStack{
                            Text(NumberFormat(choosenHotel.price))
                        }
                        .customFont(.subheadline3)
                        
                        Text(choosenHotel.phone_number)
                            .customFont(.subheadline3)
                    }
                    Group{
                        HStack{
                            Text(choosenHotel.opening_hour)
                                .customFont(.subheadline3)
                            Text("-")
                                .customFont(.subheadline3)
                            Text(choosenHotel.closing_hour)
                                .customFont(.subheadline3)
                        }
                    }
                    Group{
                        HStack {
                            Image(systemName: "map").foregroundColor(.gray)
                            Text("Lokasi").customFont(.subheadline)
                        }
                        .padding(.top)
                        .padding(.leading)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                    }
                    Group{
                        Text(choosenHotel.address)
                            .padding(.horizontal)
                            .padding(.horizontal)
                            .padding(.horizontal)
                            .frame(
                                maxWidth: .infinity,
                                alignment:  .topLeading)
                            .customFont(.body)
                    }
                    Group{
                        HStack {
                            Image(systemName: "square.text.square").foregroundColor(.gray)
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
                        .customFont(.body)
                        .padding(.bottom)

                    NavigationLink (
                        destination: TransactionView(petHotel: choosenHotel)
                            .environmentObject(orderViewModel)
                    ){
                        Text("Order")
                            .customFont(.subheadline)
                            .foregroundColor(.white)
                            .padding([.horizontal], 30)
                            .padding([.vertical], 10)
                            .background(Color(hex: "EF233D"))
                            .cornerRadius(30)
                            .overlay {
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color(hex: "E91732"), lineWidth: 1)
                            }
                            .shadow(color: Color(hex: "BABABA"), radius: 3)
                    }
                }
                .padding([.bottom], 100)
            }
        }
    }
}

struct HotelDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HotelDetailView(choosenHotel: PetHotel.sampleHotel)
            .environmentObject(OrderViewModel())
    }
}
