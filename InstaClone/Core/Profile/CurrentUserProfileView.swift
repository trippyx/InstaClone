//
//  CurrentUserProfileView.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 25/12/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user:User
    var posts:[Post]{
        return Post.MOCK_POSTS.filter({$0.user?.userName == user.userName})
    }
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(content: {
                    ProfileHeaderView(user: user)
                    PostGridView(posts:posts)
                    
                })
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    })
                }
            })
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.mockUsers[0])
}
