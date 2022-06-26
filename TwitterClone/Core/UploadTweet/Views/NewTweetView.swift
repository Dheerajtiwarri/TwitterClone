//
//  NewTweetView.swift
//  TwitterClone
//
//  Created by Dheeraj on 27/02/22.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            HStack{
                Button{
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                Button{
                    print("Tweet")
                } label: {
                    Text("Tweet")
                        .foregroundColor(.white)
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                }
            }
            .padding()
            
            HStack(alignment: .top){
                Circle()
                    .frame(width: 64, height: 64)
                
                TweetArea("What's Happening?",text: $caption)
                
                
            }
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
