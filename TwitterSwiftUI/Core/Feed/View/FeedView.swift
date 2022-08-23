
//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 22.08.2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ... 20, id:\.self){ _ in
                  TweetRowView()
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
