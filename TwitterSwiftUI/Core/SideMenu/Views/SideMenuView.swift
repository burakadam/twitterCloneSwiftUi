//
//  SideMenuView.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 23.08.2022.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment:.leading){
            VStack(alignment:.leading){
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Bruce Wayne")
                        .font(.headline).bold()
                    
                    Text("@batman")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                UserStatsView()
                    .padding(.vertical)
                
            }
            
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                HStack(spacing: 16) {
                    Image(systemName: option.imageName)
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Text(option.title)
                        .font(.subheadline)
                    
                    Spacer()
                }
                .frame(height:20)
                .padding(.vertical)
            }
            
            
            Spacer()
            
        }.padding()
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
