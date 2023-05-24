//
//  OrderDetailView.swift
//  PetZone
//
//  Created by Marsha Likorawung  on 22/05/23.
//

import SwiftUI

struct OrderDetailView: View {
    @State var order : Order
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack{
                    Image("dummypicthotel")
                        .resizable()
                        .scaledToFit()
                    Text("Order Detail")
                        .customFont(.largeTitle)
                        .padding(.top)
                        .foregroundColor(Color(hex: "EF233C"))
                    Group{
                        HStack {
                            Image(systemName: "pawprint.fill").foregroundColor(.gray)
                            Text("Pet Name").customFont(.subheadline)
                        }
                        .padding(.top)
                        .padding(.leading)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                    }
                    Text(order.petName)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
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
                    Text(order.petType)
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
                    Text("\(DateFormat(order.startDate)) - \(DateFormat(order.endDate))")
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
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .padding(.horizontal)
                        .frame(
                            maxWidth: .infinity,
                            alignment:  .topLeading)
                }  .padding([.bottom], 100)
            }
        }
    }
}

struct OrderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetailView(order: Order.sampleOrder)
    }
}
