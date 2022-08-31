//
//  SideMenuView.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 23.08.2022.
//

import SwiftUI

struct SideMenuView: View {
    
    @EnvironmentObject var authViewModel:AuthViewModel
    
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
            
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModal in
                if viewModal == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionRowView(viewModal: viewModal)
                    }
                }else if viewModal == .logout {
                    Button {
                        authViewModel.signOut()
                    } label:{
                        SideMenuOptionRowView(viewModal: viewModal)
                    }
                }else{
                    SideMenuOptionRowView(viewModal: viewModal)
                }
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


    
