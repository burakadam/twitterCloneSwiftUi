//
//  ProfilePhotoSelectorView.swift
//  TwitterSwiftUI
//
//  Created by Burak Şahin Erden on 29.08.2022.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    
    var body: some View {
        VStack{
            AuthHeaderView(
            title1: "Setup your account", title2: "Add a profile photo"
            )
            
            Button {
                showImagePicker.toggle()
            } label: {
                
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .modifier(ProfileImageModifier())
                }else{
                    Text("Select a photo")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding()
                }
                
               
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                ImagePicker(selectedImage: $selectedImage)
            }
            
            Spacer()
        }.ignoresSafeArea()
        
    }
    
    func loadImage(){
        guard let selectedImage = selectedImage else {return}
        profileImage = Image(uiImage: selectedImage)

    }
}

private struct ProfileImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: 180, height: 180)
            .clipShape(Circle())
    }
}


struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
