//
//  OrderDetailView.swift
//  PetZone-MacOS
//
//  Created by Marsha Likorawung  on 03/06/23.
//
import SwiftUI

//untuk tampilan order detail view
struct OrderDetailView: View {
    @State var order : Order
    var body: some View {
            ScrollView{
                VStack{
                    Group{
                        Image(order.pet_hotel.hotel_pic[0])
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity, maxHeight: 400)
                            .clipped()
                        Text("Order Detail")
                            .customFont(.largeTitle)
                            .padding(.top)
                            .foregroundColor(Color(hex: "EF233C"))
                        HStack {
                            Image(systemName: "pawprint.fill").foregroundColor(.gray)
                            Text("Pet Name").customFont(.subheadline)
                        }
                        .padding(.top)
                        .padding(.leading)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                        Text(order.pet_name)
                            .customFont(.caption)
                            .padding(.horizontal)
                            .padding(.horizontal)
                            .padding(.horizontal)
                            .frame(
                                maxWidth: .infinity,
                                alignment:  .topLeading)
                    }
                    Group{
                        HStack {
                            Image(systemName: "house.fill").foregroundColor(.gray)
                            Text("Pet Type").customFont(.subheadline)
                        }
                        .padding(.top)
                        .padding(.leading)
                        
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                    }
                    Text(order.pet_type)
                        .customFont(.caption)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                    Group{
                        HStack {
                            Image(systemName: "clock.fill").foregroundColor(.gray)
                            Text("Start - End Date").customFont(.subheadline)
                        }
                        .padding(.top)
                        .padding(.leading)
                        
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                    }
                    Text("\(DateFormats(order.start_date)) - \(DateFormats(order.end_date))")
                        .customFont(.caption)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                    Group{
                        HStack {
                            Image(systemName: "dollarsign.square.fill").foregroundColor(.gray)
                            Text("Total Price").customFont(.subheadline)
                        }
                        .padding(.top)
                        .padding(.leading)
                        
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                    }
                    Text(NumberFormat(order.purchase))
                        .customFont(.caption)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                }  .padding([.bottom], 100)
            }.background(Color.white)
    }
}

//untuk tampilan order detail preview
struct OrderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetailView(order: Order.sampleOrder)
    }
}
