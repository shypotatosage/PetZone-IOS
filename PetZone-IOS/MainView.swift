//
//  MainView.swift
//  PetZone-IOS
//
//  Created by MacBook Pro on 22/05/23.
//

import SwiftUI

struct MainView: View {
    @State var selected = 0
    @State var isActive = false
    @StateObject var orderViewModel = OrderViewModel()
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                if self.selected == 0 {

                    HomeView(selected: .constant(0))
                        .environmentObject(orderViewModel)

                } else if self.selected == 1 {
                    OrderListView()
                        .environmentObject(orderViewModel)
                } else {
                    ProfileView()
                }
            }
            .edgesIgnoringSafeArea(.all)
            
            FloatingTabBar(selected: self.$selected, rootIsActive: self.$isActive)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.isActive = true
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct FloatingTabBar: View {
    @Binding var selected: Int
    @Binding var rootIsActive: Bool
    
    var body: some View {
        HStack {
            Spacer(minLength: 0)
            
            HStack{
                Button(action: {
                    self.rootIsActive.toggle()
                    self.selected = 0
                }) {
                    Image(systemName: "pawprint")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(self.selected == 0 ? Color(hex: "EF233C") : .white)
                        .padding(12)
                        .background(self.selected == 0 ?  Color.white : Color(hex: "EF233C"))
                        .cornerRadius(100)
                }
                
                Spacer(minLength: 15)
                
                Button(action: {
                    self.rootIsActive.toggle()
                    self.selected = 1
                }) {
                    Image(systemName: "list.bullet.clipboard")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(self.selected == 1 ? Color(hex: "EF233C") : .white)
                        .padding(12)
                        .background(self.selected == 1 ?  Color.white : Color(hex: "EF233C"))
                        .cornerRadius(100)
                }
                
                Spacer(minLength: 15)
                
                Button(action: {
                    self.rootIsActive.toggle()
                    self.selected = 2
                }) {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(self.selected == 2 ? Color(hex: "EF233C") : .white)
                        .padding(12)
                        .background(self.selected == 2 ?  Color.white : Color(hex: "EF233C"))
                        .cornerRadius(100)
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 40)
            .background(Color(hex: "EF233C"))
            .clipShape(Capsule())
            .padding(.horizontal, 20)
            .padding(.vertical, 4)
        }
    }
}
