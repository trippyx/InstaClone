//
//  ProfileView.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 24/12/23.
//

import SwiftUI

struct ProfileView: View {
  
    let user:User
   
    var posts:[Post]{
        return Post.MOCK_POSTS.filter({$0.user?.userName == user.userName})
    }
    
    var body: some View {
            ScrollView{
                VStack(content: {
                    ProfileHeaderView(user: user)
                    PostGridView(posts: posts)
                    
                })
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.mockUsers.first!)
}
