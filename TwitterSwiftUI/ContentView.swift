//
//  ContentView.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 22.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu = false
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            }else{
                mainInterfaceView
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension ContentView {
    var mainInterfaceView: some View {
        
        ZStack(alignment: .topLeading) {
            MainTabView()
                .navigationBarHidden(showMenu)
            
            if showMenu {
                ZStack {
                    Color(.black)
                        .opacity(showMenu ? 0.25: 0.0)
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            SideMenuView()
                .frame(width:300)
                .offset(x: showMenu ? 0 : -300,y :0)
                .background(showMenu ?  Color.white : Color.clear)
              
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading){
                Button(action: {
                    withAnimation(.easeInOut){
                        showMenu.toggle()
                    }
                }){
                    Circle()
                        .frame(width: 32, height: 32)
                }
            }
        }
        .onAppear {
            showMenu=false
        }
    }
}
