//
//  SplashView.swift
//  PetZone-IOS
//
//  Created by William j. Wongge on 23/05/23.
//

import SwiftUI

var point = -90.0;

struct SplashView: View {
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(Color.white)
                .frame(height: 70)
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Image("Paw01")
                .padding(.leading, point + 70.0)
            Image("Paw02")
                .padding(.leading, point)
            Image("Paw03")
                .padding(.leading, point - 70.0)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
