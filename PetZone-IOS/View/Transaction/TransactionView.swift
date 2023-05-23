//
//  TransactionView.swift
//  PetZone
//
//  Created by MacBook Pro on 21/05/23.
//

import SwiftUI

struct TransactionView: View {
    var petHotel = PetHotel.sampleHotel
    @State private var newOrder = Order.emptyOrder
    
    var body: some View {
        ScrollView {
            Image("dummypicthotel")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: .infinity, height: 300, alignment: .topLeading)
                .padding(.bottom)
            Text(petHotel.name)
                .customFont(.largeTitle)
                .foregroundColor(Color(hex: "EF233C"))
                .padding(.top)
            Text(petHotel.address)
                .customFont(.subheadline3)
            Text(petHotel.phone_number)
                .customFont(.subheadline3)
            HStack{
                Text("\(petHotel.opening_hour) - \(petHotel.closing_hour)")
                    .customFont(.subheadline3)
            }
            .padding(.bottom)
            VStack {
                VStack(spacing: 10) {
                    Text("Pet Name")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
                    TextField("Pet Name", text: $newOrder.petName)
                        .customFont(.body)
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal)
                
                VStack(spacing: 10) {
                    Text("Pet Type")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
                    TextField("Pet Type", text: $newOrder.petType)
                        .customFont(.body)
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal)
                .padding(.top, 8)
                
                VStack(spacing: 0) {
                    Text("Start Date")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
                    DatePicker(selection: $newOrder.startDate, in: Date.now..., displayedComponents: [.date, .hourAndMinute]){
                    }
                    .padding()
                    .labelsHidden()
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal)
                .padding(.top, 8)
                
                VStack(spacing: 0) {
                    Text("End Date")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
                    DatePicker(selection: $newOrder.endDate, in: newOrder.startDate..., displayedComponents: [.date, .hourAndMinute]){
                    }
                    .padding()
                    .labelsHidden()
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal)
                
                VStack(spacing: 10) {
                    Text("Total Price")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
                    TextField("0", value: $newOrder.purchase, formatter: NumberFormatter())
                        .customFont(.body)
                        .disabled(true)
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal)
                .padding(.bottom, 28)
                
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
                    .onTapGesture {
                        
                    }
            }
            .padding(.horizontal, 2)
            .padding(.bottom)
        }
    }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView()
    }
}
