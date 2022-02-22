//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Dheeraj on 22/02/22.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12){
            Circle()
                .frame(width: 40,height: 40)
            
            VStack(alignment: .leading,spacing: 4){
                Text("Joker")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical,4)
       
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
