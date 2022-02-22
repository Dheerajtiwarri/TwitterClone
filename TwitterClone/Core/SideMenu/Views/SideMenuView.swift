//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Dheeraj on 22/02/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48, height: 48)
                    
                VStack(alignment: .leading, spacing: 4){
                    Text("Bruce wayne")
                        .font(.headline)
                    
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                
                UserStateView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue){ viewModel in
                if viewModel == .profile{
                    NavigationLink{
                        ProfileView()
                    } label : {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                } else if viewModel == .logout{
                    Button{
                        print("Handle logout here..")
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                }else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }
//                HStack(spacing: 16){
//                    Image(systemName: option.imageName)
//                        .font(.headline)
//                        .foregroundColor(.gray)
//                    
//                    Text(option.title)
//                        .font(.subheadline)
//                    
//                    Spacer()
//                }
//                .frame( height: 40)
//                .padding(.horizontal)
            }
            
           
            Spacer()
            
        }
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
