//
//  AuthViewModel.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 26.08.2022.
//

import SwiftUI
import Firebase

class AuthViewModel : ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    @Published var didAuthenticationUser = false
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String){
        Auth.auth().signIn(withEmail: email,password: password) { result,error in
            if let error = error {
                print("DEBUG: failed to sign in with error \(error.localizedDescription)")
                return
            }
            
            guard let user =  result?.user else {return}
            self.userSession = user
            print("DEBUG: Did user loged in")
            
        }
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: failed to register with error \(error.localizedDescription)")
                return
            }
            
            guard let user =  result?.user else {return}
         //   self.userSession = user
            
            print("DEBUG: User is \(user)")
            
            let data=[
                "email":email,
                "username":username.lowercased(),
                "fullname":fullname,
                "uid":user.uid
            ]
            
            Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
              
                self.didAuthenticationUser = true
                print("DEBUG: didAuthenticationUser \(self.didAuthenticationUser)")
            }

        }
    }
    
    
    func signOut(){
        userSession=nil
        
        try? Auth.auth().signOut()
    }
    
}
