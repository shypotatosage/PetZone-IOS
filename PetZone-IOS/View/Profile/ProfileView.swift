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
                #if os(iOS)
                VStack {
                    List {
                        VStack {
                            ProfileHeaderView()
                            ProfileImageView()
                            ProfileBodyView()
                        }
                        .padding(.horizontal)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                    }
                    Spacer(minLength: 60)
                }
                .listStyle(PlainListStyle())
                #elseif os(macOS)
                HStack(){
                    ProfileImageView()
                    VStack(alignment: .leading){
                        ProfileHeaderView()
                        ProfileBodyView()
                    }
                }
                .padding(.all)
                #endif
            }
        }.foregroundColor(.black)
            .background(Color.white)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


struct ProfileHeaderView:View{
    var body:some View{
        HStack{
            Text("Profile")
                .customFont(.largeTitle)
                .foregroundColor(Color(hex: "EF233C"))
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct ProfileImageView:View{
#if os(iOS)
    let imageHeight = 257.0
#elseif os(macOS)
    let imageHeight = 200.0
#endif
    
    var body:some View{
        ZStack{
            Rectangle()
                .fill(.black
                    .shadow(.drop(radius: 10, x: 5, y: 5)))
                .frame(width: imageHeight, height: imageHeight)
                .cornerRadius(1000)
            Image("profilepict")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: imageHeight, height: imageHeight)
                .cornerRadius(1000)
        }
        #if os(macOS)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 24)
        #else
        .frame(maxWidth: .infinity, alignment: .center)
        #endif
        .padding(.bottom, 30.0)
    }
}

struct ProfileBodyView:View{
    var body:some View{
        NavigationStack{
            VStack{
                ProfileDetail(icon: "person", content: User.sampleUser.name)
                
                ProfileDetail(icon: "envelope", content: User.sampleUser.email)
                
                ProfileDetail(icon: "phone", content: User.sampleUser.phone_number)
                
                Button(action: {exit(0)}){
                    Text("Logout")
                }
                .buttonStyle(DefaultButton())
                .bold()
            }.background(Color.white)
        }.navigationBarBackButtonHidden(true)
    }
}

