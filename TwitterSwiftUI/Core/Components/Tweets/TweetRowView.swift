//
//  TweetRowView.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 22.08.2022.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment:.leading) {
            //profile image + user info + tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                //user infor & tweet caption
                VStack(alignment: .leading){
               
                    //user info
                    HStack{
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    //Tweet caption
                    Text("I belive in Harvey Dent")
                        .multilineTextAlignment(.leading)
                }
                    
            }
            
            // action buttons
            
            HStack {
                Button(action: {
                    // actions goes here
                }, label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                })
                
                Spacer()
                
                Button(action: {
                    // actions goes here
                }, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                })
                
                Spacer()
                
                Button(action: {
                    // actions goes here
                }, label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                })
                Spacer()
                
                Button(action: {
                    // actions goes here
                }, label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                })
            }.padding()
                .foregroundColor(.gray)
            
            Divider()
     
        }.padding()
            
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
