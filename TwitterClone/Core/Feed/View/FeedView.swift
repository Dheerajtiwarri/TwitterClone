//
//  FeedView.swift
//  TwitterClone
//
//  Created by Dheeraj on 19/02/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(1 ... 20, id: \.self){ _ in
                   TweetRowView()
                        .padding()
                }
            }
        }
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
