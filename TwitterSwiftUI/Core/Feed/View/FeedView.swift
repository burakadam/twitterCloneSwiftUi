
//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 22.08.2022.
//

import SwiftUI

struct FeedView: View {
    
    @State private var showNewTweetView =  false
    
    var body: some View {
        ZStack(alignment:.bottomTrailing){
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 20, id:\.self){ _ in
                      TweetRowView()
                    }
                }
            }
            
            Button {
                showNewTweetView.toggle()
            } label:{
                Image(systemName: "pencil")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                
            }
            .background(Color(.systemBlue))
            .frame(width: 55, height: 55)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView){
                NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
