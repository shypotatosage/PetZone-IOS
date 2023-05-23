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
                Image("dummypicthotel")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 400)
                    .clipped()
                Group{
                    VStack{
                        HStack{
                            Text(choosenHotel.name)
                                .font(.system(size: 36))
                                .bold()
                                .frame(
                                    maxWidth: .infinity,
                                    alignment:  .topLeading)
                            Text(String(choosenHotel.price))           .font(.system(size: 30))
                            .bold()
                        }
                        
                        HStack {
                            Image(systemName: "location.fill").foregroundColor(.gray)
                            Text(choosenHotel.address)
                        }
                        .padding(.top, 1)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                        HStack {
                            Image(systemName: "location.fill").foregroundColor(.gray)
                            Text(choosenHotel.phone_number)
                        }
                        .padding(.top, 1)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                        HStack {
                            Image(systemName: "location.fill").foregroundColor(.gray)
                            HStack{
                                Text(choosenHotel.opening_hour)
                                Text("-")
                                Text(choosenHotel.closing_hour)
                            }
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
                        HStack {
                            Text(choosenHotel.description)
                        }
                        .padding(.top, 1)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                        Button("Order"){
                        }
                        .padding(.top)
                        .buttonStyle(DefaultButton())
                        .bold()
                    }
                    .font(.system(size: 20))
                    .padding()
                    .padding()
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
