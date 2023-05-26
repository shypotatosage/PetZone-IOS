//
//  EditProfileView.swift
//  PetZone
//
//  Created by MacBook Pro on 18/05/23.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @State private var newUser = User.sampleUser
    
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImageData: Data? = nil
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack{
                    Image("profilepict")
                        .resizable()
                        .frame(width: 250, height: 250)
                        .cornerRadius(1000)
                }
                Group{
                    Text("Name")
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .zero,
                            alignment:  .topLeading)
                    HStack {
                        Image(systemName: "person.fill").foregroundColor(.gray)
                        TextField("Enter Your Name", text: $newUser.name)
                            .textFieldStyle(RoundedBorderTextFieldStyle()).font(.headline)
                    }
                }
                .padding(10)
                Group{
                    Text("Email")
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .zero,
                            alignment:  .topLeading)
                    HStack {
                        Image(systemName: "envelope.fill").foregroundColor(.gray)
                        TextField("Enter Your Name", text: $newUser.email)
                            .textFieldStyle(RoundedBorderTextFieldStyle()).font(.headline)
                    }
                }
                .padding(10)
                Group{
                    Text("Phone Number")
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .zero,
                            alignment:  .topLeading)
                    HStack {
                        Image(systemName: "phone.fill").foregroundColor(.gray)
                        TextField("Enter Your Name", text: $newUser.phone_number)
                            .textFieldStyle(RoundedBorderTextFieldStyle()).font(.headline)
                    }
                }
                .padding(10)
                Button("Logout"){
                }
                .buttonStyle(DefaultButton())
                .bold()
            }
            .padding(20)
                .navigationTitle("Profile")
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
