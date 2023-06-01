//
//  SplashView.swift
//  PetZone-IOS
//
//  Created by William j. Wongge on 23/05/23.
//

import SwiftUI

var POINT = -90.0;
var SECOND = 2.5;

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack{
            if self.isActive {
                MainView()
            }
            else{
                VStack{
                    Rectangle()
                        .foregroundColor(Color.clear)
                        .frame(height: 70)
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    Image("Paw01")
                        .padding(.leading, POINT + 70.0)
                    Image("Paw02")
                        .padding(.leading, POINT)
                    Image("Paw03")
                        .padding(.leading, POINT - 70.0)
                }
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + SECOND){
                withAnimation{
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
