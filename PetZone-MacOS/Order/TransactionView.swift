//
//  TransactionView.swift
//  PetZone-MacOS
//
//  Created by MacBook Pro on 23/05/23.
//

import SwiftUI

struct TransactionView: View {
    var petHotel: PetHotel
    @State private var newOrder = Order.emptyOrder
    @State var isError = false
    
    @EnvironmentObject var orderViewModel: OrderViewModel
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ScrollView {
            Image("dummypicthotel")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: 300)
                .clipped()
                .padding(.bottom)
            Text(petHotel.name)
                .customFont(.largeTitle)
                .foregroundColor(Color(hex: "EF233C"))
                .padding(.top, 8)
            Text(petHotel.address)
                .customFont(.subheadline3)
                .padding(.top, 8)
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
                        .textFieldStyle(.plain)
                        .padding(7)
                        .padding(.horizontal, 2)
                        .background(Color(NSColor.textBackgroundColor))
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(hex: "d3d3d3"), lineWidth: 1)
                        )
                    if isError == true && newOrder.petName.isEmpty {
                        Text("Pet Name is required.")
                            .customFont(.footnote)
                            .foregroundColor(.red)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 2)
                    }
                }
                .padding(.horizontal)
                
                VStack(spacing: 10) {
                    Text("Pet Type")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
                    TextField("Pet Type", text: $newOrder.petType)
                        .customFont(.body)
                        .textFieldStyle(.plain)
                        .padding(7)
                        .padding(.horizontal, 2)
                        .background(Color(NSColor.textBackgroundColor))
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(hex: "d3d3d3"), lineWidth: 1)
                        )
                    if isError == true && newOrder.petType.isEmpty {
                        Text("Pet Type is required.")
                            .customFont(.footnote)
                            .foregroundColor(.red)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 2)
                    }
                }
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
                    if isError == true && newOrder.startDate >= newOrder.endDate {
                        Text("Start Date has to be before the End Date")
                            .customFont(.footnote)
                            .foregroundColor(.red)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 2)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 8)
                
                VStack(spacing: 0) {
                    Text("End Date")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
                    DatePicker(selection: $newOrder.endDate, in: Calendar.current.date(byAdding: .day, value: 1, to: newOrder.startDate)!..., displayedComponents: [.date, .hourAndMinute]){
                    }
                    .padding()
                    .labelsHidden()
                    .onChange(of: newOrder.endDate) { newValue in
                        //                        newOrder.purchase = Calendar.current.dateComponents([.day], from: newOrder.startDate, to: newValue).day! * petHotel.price
                        let cal = Calendar(identifier: .gregorian)
                        newOrder.purchase = Calendar.current.dateComponents([.day], from: cal.startOfDay(for: newOrder.startDate), to: newValue).day! * petHotel.price
                    }
                }
                .padding(.horizontal)
                .padding(.top, 8)
                
                VStack(spacing: 10) {
                    Text("Total Price")
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .customFont(.headline)
                        .padding(.leading, 2)
                    TextField("0", value: $newOrder.purchase, formatter: NumberFormatter())
                        .customFont(.body)
                        .textFieldStyle(.plain)
                        .padding(7)
                        .padding(.horizontal, 2)
                        .background(Color(NSColor.textBackgroundColor))
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(hex: "d3d3d3"), lineWidth: 1)
                        )
                        .disabled(true)
                }
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
                        if (newOrder.petName.isEmpty || newOrder.petType.isEmpty || newOrder.startDate >= newOrder.endDate) {
                            isError = true
                        } else {
                            orderViewModel.addOrder(newOrder: newOrder)
                            
                            presentationMode.wrappedValue.dismiss()
                        }
                    }
                
                Spacer(minLength: 72)
            }
            .padding(.horizontal, 2)
            .padding(.bottom)
        }
        .onAppear {
            newOrder.petHotel = petHotel
            newOrder.endDate = Calendar.current.date(byAdding: .day, value: 1, to: newOrder.startDate)!
            newOrder.startDate = Date.now
            newOrder.purchase = petHotel.price
        }.foregroundColor(.black)
            .background(Color.white)
    }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView(petHotel: PetHotel.sampleHotel)
            .environmentObject(OrderViewModel())
    }
}
