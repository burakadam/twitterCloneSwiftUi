//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 22.08.2022.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUIApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
          //      ContentView()
                ProfilePhotoSelectorView()
            }
            .environmentObject(viewModel)
        }
    }
}
