//
//  UploadPostViewModal.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 27/12/23.
//

import Foundation
import PhotosUI
import SwiftUI

@MainActor
class UploadPostViewModal:ObservableObject{
    @Published var postImage:Image?
    @Published var selectedImage:PhotosPickerItem?{
        didSet{
            Task {
                await loadImage(forItem:selectedImage)
            }
        }
    }
    
    func loadImage(forItem item:PhotosPickerItem?) async{
        guard let item = item else {
            return
        }
        guard let data = try? await item.loadTransferable(type: Data.self) , let uiimage = UIImage(data: data) else { return }
        
        postImage = Image(uiImage: uiimage)
        
    }
    
}
