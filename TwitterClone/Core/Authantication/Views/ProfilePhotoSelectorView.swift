//
//  ProfilePhotoSelectorView.swift
//  TwitterClone
//
//  Created by Dheeraj Tiwari on 16/02/23.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack{
            
           AuthHeaderView(titleMain: "Create your account", titleSub: "Add a profile photo")
            
            
            Button{
                print("Pick image here...")
            }label: {
                Image("add_user_image")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color(.systemBlue))
                    .scaledToFill()
                    .frame(width: 140,height: 140)
                    .padding(.top,44)
            }
            
            Spacer()
        }
        .ignoresSafeArea()
        
       
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
