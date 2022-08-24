//
//  SideMenuOptionRowView.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 23.08.2022.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    
    let viewModal:SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModal.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModal.title)
                .foregroundColor(.black)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height:20)
        .padding(.vertical)
    }
}

struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(viewModal: .profile)
    }
}
