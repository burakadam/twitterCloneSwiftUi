//
//  TweetFilterViewModal.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 23.08.2022.
//

import Foundation


enum TweetFilterViewModal: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
            
        }
    }
}
