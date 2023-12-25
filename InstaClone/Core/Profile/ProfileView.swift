//
//  ProfileView.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 24/12/23.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems:[GridItem] = [
    
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
    
    ]
    let user:User
    var body: some View {
            ScrollView{
                VStack(content: {
                    VStack(spacing:10,content: {
                        
                        HStack(content: {
                            Image(user.profileImageUrl ?? "")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                            Spacer()
                            
                            HStack(spacing: 8, content: {
                                UserStateView(value: 3, title: "Posts")
                                UserStateView(value: 3, title: "Followers")
                                UserStateView(value: 3, title: "Following")
                            })
                        })
                        .padding(.horizontal)
                        
                        
                        VStack(alignment:.leading,spacing:4,content: {
                            Text(user.fullName ?? "")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text(user.userName)
                                .font(.footnote)
                        })
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.horizontal)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 360, height: 32)
                                .foregroundStyle(.black)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray, lineWidth: 1)
                                }
                        })
                        
                        Divider()
                    })
                    LazyVGrid(columns:gridItems,spacing: 2,content: {
                        ForEach(0..<15) { val in
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFill()
                        }
                    })
                    
                })
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.mockUsers.first!)
}
