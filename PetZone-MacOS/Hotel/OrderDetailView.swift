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
