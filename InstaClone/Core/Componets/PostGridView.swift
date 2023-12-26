//
//  PostGridView.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 26/12/23.
//

import SwiftUI

struct PostGridView: View {
    private let gridItems:[GridItem] = [
    
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
    
    ] 
    
    private let imageDimension = (UIScreen.main.bounds.width / 3) - 1
    var posts:[Post]
    var body: some View {
        LazyVGrid(columns:gridItems,spacing: 2,content: {
            ForEach(posts) { post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height: imageDimension)
                    .clipped()
            }
        }) 
    }
}

#Preview {
    PostGridView(posts: Post.MOCK_POSTS)
}
