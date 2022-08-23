//
//  MainTabView.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 22.08.2022.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }
            
            ExploreView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            
            NotificationsView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "bell")
                }
            
            MessagesView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "envelope")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
