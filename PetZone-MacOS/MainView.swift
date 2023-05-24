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
                NavigationLink(destination: HomeView()) {
                    Label("Home", systemImage: "house")
                }
                NavigationLink(destination: TransactionView()) {
                    Label("Order History", systemImage: "list.bullet")
                }
                NavigationLink(destination: HomeView()) {
                    Label("Profile", systemImage: "person")
                }
            }
            .listStyle(SidebarListStyle())
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
