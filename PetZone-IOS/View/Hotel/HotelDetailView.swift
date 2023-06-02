//
//  HotelDetailView.swift
//  PetZone
//
//  Created by MacBook Pro on 18/05/23.
//

import SwiftUI

struct HotelDetailView: View {
    @State var chosenHotel : PetHotel
    
    @EnvironmentObject var orderViewModel: OrderViewModel

    var body: some View {
        NavigationStack {
            ScrollView{
                VStack{
                    Group{
                        TabView {
                            ForEach(chosenHotel.hotel_pic, id: \.self) { image in
                                Image(image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(maxWidth: .infinity, maxHeight: 300)
                                    .clipped()
                            }
                        }
                        .tabViewStyle(PageTabViewStyle())
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                        .frame(height: 300)
                        
                        Text(chosenHotel.name)
                            .customFont(.largeTitle)
                            .padding(.top)
                            .foregroundColor(Color(hex: "EF233C"))
                        HStack{
                            Text(NumberFormat(chosenHotel.price))
                        }
                        .customFont(.subheadline3)
                        
                        Text(chosenHotel.phone_number)
                            .customFont(.subheadline3)
                    }
                    Group{
                        HStack{
                            Text(chosenHotel.opening_hour)
                                .customFont(.subheadline3)
                            Text("-")
                                .customFont(.subheadline3)
                            Text(chosenHotel.closing_hour)
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
                        Text(chosenHotel.address)
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
                    Text(chosenHotel.description)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                        .customFont(.body)
                        .padding(.bottom)

                    NavigationLink (
                        destination: TransactionView(petHotel: chosenHotel)
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
        HotelDetailView(chosenHotel: PetHotel.sampleHotel)
            .environmentObject(OrderViewModel())
    }
}
