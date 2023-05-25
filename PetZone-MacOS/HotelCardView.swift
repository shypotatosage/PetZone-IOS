//
//  HotelCard.swift
//  PetZone
//
//  Created by MacBook Pro on 19/05/23.
//

import SwiftUI

struct HotelCardView: View {
    let width: CGFloat
    let petHotel: PetHotel
    
    var body: some View {
            HStack {
                VStack {
                    Text(petHotel.name)
                        .customFont(.title3)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    Text(petHotel.city)
                        .customFont(.subheadline2)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    HStack {
                        Image(systemName: "location")
                        if (petHotel.address.count <= 20) {
                            Text("\(petHotel.address)...")
                                .customFont(.footnote)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        } else {
                            Text("\((petHotel.address as NSString).substring(to: 20))...")
                                .customFont(.footnote)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                    }
                    .padding(.vertical, 1)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    HStack {
                        Image(systemName: "phone")
                        Text(petHotel.phone_number)
                            .customFont(.footnote)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 1)
                    HStack {
                        Image(systemName: "clock")
                        Text("\(petHotel.opening_hour) - \(petHotel.closing_hour)")
                            .customFont(.footnote)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding([.top, .leading, .bottom])
                .padding(.trailing, 1)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                VStack {
                    Image(petHotel.hotel_pic)
                        .resizable()
                        .centerCropped()
                        .edgesIgnoringSafeArea(.all)
                        .scaledToFill()
                        .frame(maxWidth: width*6)
                        .clipped()
                        .cornerRadius(15)
                }
                .frame(width: width/5)
            }
            .padding(.leading, 8)
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

struct HotelCardView_Previews: PreviewProvider {
    static var petHotel = PetHotel.sampleHotel
    
    static var previews: some View {
        HotelCardView(width: 500, petHotel: petHotel)
            .frame(height: 190)
    }
}

extension Image {
    func centerCropped() -> some View {
        Color.clear
        .overlay(
            self
            .resizable()
            .scaledToFill()
        )
        .clipped()
    }
}
