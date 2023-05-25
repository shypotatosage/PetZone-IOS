//
//  OrderCardView.swift
//  PetZone-MacOS
//
//  Created by Marsha Likorawung  on 25/05/23.
//

import SwiftUI

//untuk tampilan card order
struct OrderCardView: View {
    let width: CGFloat
    let order: Order
    
    var body: some View {
        HStack {
            VStack {
                Image(order.petHotel.hotel_pic)
                    .resizable()
                    .centerCropped()
                    .edgesIgnoringSafeArea(.all)
                    .scaledToFill()
                    .frame(maxWidth: width*6)
                    .clipped()
                    .cornerRadius(15)
            }
            .frame(alignment: .leading)
            .frame( width: width/5)
            VStack {
                HStack{
                    Text(order.petHotel.name)
                        .customFont(.title3)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    Text(NumberFormat(order.purchase))
                        .customFont(.footnote)
                        .frame(maxWidth: .infinity, alignment: .topTrailing)
                        .padding(.trailing)
                }
                Text(order.petName)
                    .customFont(.subheadline2)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                Text(DateFormat(order.endDate))
                    .customFont(.caption)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding([.top, .leading, .bottom])
            .padding(.trailing, 1)
            .frame(maxWidth: .infinity, alignment: .topLeading)
            
        }
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(hex: "d3d3d3"), lineWidth: 1)
        )
        .cornerRadius(15)
        .background(
            Rectangle()
                .fill(.white)
                .cornerRadius(15)
                .shadow(
                    color: Color.gray.opacity(0.4),
                    radius: 4,
                    x: 2,
                    y: 5
                )
        )
    }
}

//untuk preview tampilan order card
struct OrderCardView_Previews: PreviewProvider {
    static var order = Order.sampleOrder
    
    static var previews: some View {
        OrderCardView(width: 500, order: order)
            .frame(height: 100)
    }
}

