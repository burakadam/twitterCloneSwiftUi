//
//  AuthHeaderView.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 24.08.2022.
//

import SwiftUI

struct AuthHeaderView: View {
    
    let title1:String
    let title2:String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title1)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.leading)
            
            Text(title2)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.leading)
        }
        .frame(maxWidth: .infinity,maxHeight: 260,alignment:.leading)
        .background(Color(.systemBlue))
        .foregroundColor(Color(.white))
        .clipShape(RoundedShape(corners:[.bottomRight]))
  
        
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "Welcome", title2: "Welcome back")
    }
}
