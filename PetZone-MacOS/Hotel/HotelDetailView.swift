//
//  HotelDetailView.swift
//  PetZone-MacOS
//
//  Created by MacBook Pro on 23/05/23.
//

import SwiftUI

struct HotelDetailView: View {
    @State var chosenHotel : PetHotel
    
    var body: some View {
        ScrollView{
            VStack{
                TabView {
                    ForEach(chosenHotel.hotel_pic, id: \.self) { image in
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity, maxHeight: 400)
                            .clipped()
                    }
                }
                .frame(height: 400)
                Group{
                    VStack{
                        HStack{
                            Text(chosenHotel.name)
                                .foregroundColor(Color(hex: "EF233C"))
                                .customFont(.largeTitle)
                                .font(.system(size: 36))
                                .bold()
                                .frame(
                                    maxWidth: .infinity,
                                    alignment:  .topLeading)
                            HStack{
                                Text(NumberFormat(chosenHotel.price))
                            }
                            .customFont(.largeTitle)
                            .font(.system(size: 30))
                            .bold()
                        }
                        
                        
                        HStack {
                            Image(systemName: "location.fill").foregroundColor(.black)
                            Text(chosenHotel.address)
                                .customFont(.subheadline)
                        }
                        .padding(.top, 1)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                        HStack {
                            Image(systemName: "phone.fill").foregroundColor(.black)
                            Text(chosenHotel.phone_number)
                                .customFont(.subheadline)
                        }
                        .padding(.top, 1)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                        HStack {
                            Image(systemName: "clock.fill").foregroundColor(.black)
                            HStack{
                                Text(chosenHotel.opening_hour)
                                Text("-")
                                Text(chosenHotel.closing_hour)
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
                            Text(chosenHotel.description)
                                .customFont(.body)
                        }
                        .padding(.bottom)
                        
                        NavigationLink (destination: TransactionView(petHotel: chosenHotel)){
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
        }.background(Color.white)
    }
}

struct HotelDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HotelDetailView(chosenHotel: PetHotel.sampleHotel)
    }
}
