//
//  OrderDetailView.swift
//  PetZone
//
//  Created by Marsha Likorawung  on 22/05/23.
//

import SwiftUI

struct OrderDetailView: View {
    var order = Order.sampleOrder
    var body: some View {
        ScrollView {
            Text("Order Detail")
                .customFont(.largeTitle)
                .foregroundColor(Color(hex: "EF233C"))
                .padding(.top)
            Image("dummypicthotel")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: .infinity, height: 300, alignment: .topLeading)
                .padding(.bottom)
            VStack {
                VStack(spacing: 10) {
                    Text("Pet Name")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
//                    TextField("Pet Name", text: $newOrder.petName)
//                        .customFont(.body)
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal)
                
                VStack(spacing: 10) {
                    Text("Pet Type")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
//                    TextField("Pet Type", text: $newOrder.petType)
//                        .customFont(.body)
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal)
                .padding(.top, 8)
                
                VStack(spacing: 0) {
                    Text("Start Date")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
                   
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal)
                .padding(.top, 8)
                
                VStack(spacing: 0) {
                    Text("End Date")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal)
                
                VStack(spacing: 10) {
                    Text("Total Price")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal)
                .padding(.bottom, 28)
                
            }
            .padding(.horizontal, 10)
            .padding(.bottom)
        }
    }
}

struct OrderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetailView()
    }
}
