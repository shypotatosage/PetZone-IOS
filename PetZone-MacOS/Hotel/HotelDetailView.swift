//
//  HotelDetailView.swift
//  PetZone-MacOS
//
//  Created by MacBook Pro on 23/05/23.
//

import SwiftUI

struct HotelDetailView: View {
    @State var choosenHotel : PetHotel
    
    var body: some View {
        ScrollView{
            VStack{
                Image(choosenHotel.hotel_pic)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 400)
                    .clipped()
                Group{
                    VStack{
                        HStack{
                            Text(choosenHotel.name)
                                .foregroundColor(Color(hex: "EF233C"))
                                .customFont(.largeTitle)
                                .font(.system(size: 36))
                                .bold()
                                .frame(
                                    maxWidth: .infinity,
                                    alignment:  .topLeading)
                            HStack{
                                Text("Rp.")
                                Text(String(choosenHotel.price))
                            }
                            .customFont(.largeTitle)
                            .font(.system(size: 30))
                            .bold()
                        }
                        
                        
                        HStack {
                            Image(systemName: "location.fill").foregroundColor(.black)
                            Text(choosenHotel.address)
                                .customFont(.subheadline)
                        }
                        .padding(.top, 1)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                        HStack {
                            Image(systemName: "phone.fill").foregroundColor(.black)
                            Text(choosenHotel.phone_number)
                                .customFont(.subheadline)
                        }
                        .padding(.top, 1)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                        HStack {
                            Image(systemName: "clock.fill").foregroundColor(.black)
                            HStack{
                                Text(choosenHotel.opening_hour)
                                Text("-")
                                Text(choosenHotel.closing_hour)
                            }
                            .customFont(.subheadline)
                        }
                        .padding(.top, 1)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                        Text("Description")
                            .padding(.top, 1)
                            .bold()
                            .frame(
                                maxWidth: .infinity,
                                alignment:  .topLeading)
                            .customFont(.subheadline)
                        HStack {
                            Text(choosenHotel.description)
                                .customFont(.body)
                        }
                        
                        NavigationLink (destination: TransactionView()){
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
                        .buttonStyle(PlainButtonStyle())

                    }
                    .font(.system(size: 20))
                    .padding()
                    .padding()
                    .padding([.bottom], 100)
                    .frame(
                        maxWidth: .infinity,
                        alignment:  .topLeading)
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
