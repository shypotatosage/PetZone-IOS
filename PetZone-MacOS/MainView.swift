//
//  MainView.swift
//  PetZone-MacOS
//
//  Created by MacBook Pro on 23/05/23.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationView {
            List {
                Text("Menu")
                    .customFont(.largeTitle2)
                    .foregroundColor(.white)
                    .padding(.top, 12)
                NavigationLink(destination: HomeView()) {
                    HStack(alignment: .center) {
                        VStack {
                            Image(systemName: "pawprint")
                                .customFont(.subheadline)
                        }
                        .frame(width: 24)
                        Text("Hotel List")
                            .customFont(.subheadline)
                            .padding(.top, 4)
                    }
                    .foregroundColor(.white)
                }
                .padding(.vertical, 1)
                .padding(.leading, 20)
                NavigationLink(destination: OrderListView()) {
                    HStack(alignment: .center) {
                        VStack {
                            Image(systemName: "list.bullet.clipboard")
                                .customFont(.subheadline)
                        }
                        .frame(width: 24)
                        Text("Order History")
                            .customFont(.subheadline)
                            .padding(.top, 4)
                    }
                    .foregroundColor(.white)
                }
                .padding(.vertical, 1)
                .padding(.leading, 20)
                NavigationLink(destination: HomeView()) {
                    HStack(alignment: .center) {
                        VStack {
                            Image(systemName: "person")
                                .customFont(.subheadline)
                        }
                        .frame(width: 24)
                        Text("Profile")
                            .customFont(.subheadline)
                            .padding(.top, 4)
                    }
                    .foregroundColor(.white)
                }
                .padding(.vertical, 1)
                .padding(.leading, 20)
            }
//            .listStyle(SidebarListStyle())
            .background(Color(hex: "EF233C"))
            
            HomeView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
