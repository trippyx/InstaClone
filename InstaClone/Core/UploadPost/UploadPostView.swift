//
//  UploadPostView.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 27/12/23.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented:Bool = false
    @StateObject var viewModal = UploadPostViewModal()
    @Binding var tabIndex:Int
    var body: some View {
        VStack {
            HStack(content: {
                Button(action: {
                    caption = ""
                    viewModal.selectedImage = nil
                    viewModal.postImage = nil
                    tabIndex = 0
                }, label: {
                    Text("Cancel")
                        
                })
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                })
            })
            .padding(.horizontal)
            
            HStack(spacing:8,content: {
                if let image = viewModal.postImage{
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                }else{
                    Image("batman")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                
                TextField("Enter your caption", text: $caption,axis: .vertical)
                
            })
            .padding()
            
            Spacer()
            
        }
        .onAppear(perform: {
            imagePickerPresented.toggle()
        })
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModal.selectedImage)
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(0))
}
