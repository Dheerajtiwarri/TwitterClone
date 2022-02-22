//
//  UserStateView.swift
//  TwitterClone
//
//  Created by Dheeraj on 22/02/22.
//

import SwiftUI

struct UserStateView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack{
               Text("887")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack{
               Text("4.9M")
                    .font(.subheadline)
                    .bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStateView_Previews: PreviewProvider {
    static var previews: some View {
        UserStateView()
    }
}
