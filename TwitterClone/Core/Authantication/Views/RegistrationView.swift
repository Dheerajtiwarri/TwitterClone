//
//  RegistrationView.swift
//  TwitterClone
//
//  Created by Dheeraj Tiwari on 26/06/22.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel :AuthViewModel
    var body: some View {
        //Parent view
        VStack{
            //Header View
            AuthHeaderView(titleMain: "Get started.", titleSub: "Create your account")
            
            VStack(spacing: 40){
                CustomInputFields(imageName: "envelope", placeHolderText: "Email", text: $email)
                
                CustomInputFields(imageName: "person", placeHolderText: "Username", text: $username)
                
                CustomInputFields(imageName: "person", placeHolderText: "Full name", text: $fullname)
                
                CustomInputFields(imageName: "lock", placeHolderText: "Password", text: $password)
            }
            .padding(32)
            
            
            Button{
                viewModel.register(withEmail: email, password: password, fullname: fullname, username: username)
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            }label: {
                HStack{
                    Text("Already have an account?")
                        .font(.footnote)
                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom,32)
            
        
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
