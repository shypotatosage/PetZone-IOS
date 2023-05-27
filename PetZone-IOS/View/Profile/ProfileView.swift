//
//  ProfileView.swift
//  PetZone-IOS
//
//  Created by William j. Wongge on 27/05/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        GeometryReader { geo in
            NavigationStack {
                VStack {
                    List {
                        VStack {
                            HStack{
                                Text("Profile")
                                    .customFont(.largeTitle)
                                    .foregroundColor(Color(hex: "EF233C"))
                                Spacer()
                            }
                            .frame(width: .infinity, alignment: .leading)
                            .padding()
                            
                            ZStack{
                                Rectangle()
                                    .fill(.black
                                        .shadow(.drop(radius: 10, x: 5, y: 5)))
                                    .frame(width: 257, height: 257)
                                    .cornerRadius(1000)
                                Image("profilepict")
                                    .resizable()
                                    .frame(width: 257, height: 257)
                                    .cornerRadius(1000)
                            }
                            .frame(width: .infinity, alignment: .leading)
                            .padding(.bottom, 30.0)
                            
                            ProfileDetail(icon: "person", content: User.sampleUser.name)
                            
                            ProfileDetail(icon: "envelope", content: User.sampleUser.email)
                            
                            ProfileDetail(icon: "phone", content: User.sampleUser.phone_number)
                            
                            Button(action: {exit(0)}){
                                Text("Logout")
                            }
                            .buttonStyle(DefaultButton())
                            .bold()
                            
                        }
                        .padding(.horizontal)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                        
                    }
                    Spacer(minLength: 60)
                }
                .listStyle(PlainListStyle())
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
