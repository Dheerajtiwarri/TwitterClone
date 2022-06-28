//
//  AuthHeaderView.swift
//  TwitterClone
//
//  Created by Dheeraj Tiwari on 27/06/22.
//

import SwiftUI

struct AuthHeaderView: View {
    let titleMain: String
    let titleSub: String
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{Spacer()}
            Text(titleMain)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(titleSub)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape( RoundedShape(corners: [.bottomRight]))
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(titleMain: "Hello", titleSub: "Welcome Back")
    }
}
