//
//  MainView.swift
//  PetZone-MacOS
//
//  Created by MacBook Pro on 23/05/23.
//

import SwiftUI

//untuk tampilan main view
struct MainView: View {
    @StateObject var orderViewModel = OrderViewModel()
    @StateObject var profileViewModel = ProfileViewModel()
    var body: some View {
        NavigationView {
            List {
                Text("Menu")
                    .customFont(.largeTitle2)
                    .foregroundColor(.white)
                    .padding(.top, 12)
                NavigationLink(destination: HomeView().environmentObject(orderViewModel)) {
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
                NavigationLink(destination: OrderListView().environmentObject(orderViewModel)) {
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
                NavigationLink(destination: ProfileView().environmentObject(profileViewModel)) {
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
            .background(Color(hex: "EF233C"))
            HomeView().environmentObject(orderViewModel)
        }
    }
}

//untuk tampilan main view preview
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
