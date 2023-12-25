//
//  SearchView.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 24/12/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing:12){
                    ForEach(User.mockUsers) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageUrl ?? "" )
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                
                                VStack(alignment:.leading,content: {
                                    Text(user.userName)
                                        .fontWeight(.semibold)
                                    
                                    Text(user.fullName ?? "")
                                })
                                .font(.footnote)
                                Spacer()
                                
                            }
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.top,8)
                .searchable(text: $searchText,prompt: "Search")
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
