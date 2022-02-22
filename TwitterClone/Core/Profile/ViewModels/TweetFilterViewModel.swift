//
//  TweetFilterViewModel.swift
//  TwitterClone
//
//  Created by Dheeraj on 22/02/22.
//

import Foundation

enum TweetFliterViewModel: Int, CaseIterable{
    case tweets
    case replies
    case likes
    
    var title: String{
        switch self {
        case .tweets:
            return "Tweets"
        case .replies:
            return "Replies"
        case .likes:
            return "Likes"
        }
    }
}


