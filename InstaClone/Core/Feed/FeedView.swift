//
//  FeedView.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 24/12/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing:32){
                    ForEach(0...10,id: \.self){ post in
                        FeedCell()
                    }
                }
                .padding(.top,8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                
                ToolbarItem(placement: .topBarLeading) {
                    Image("insta")
                        .resizable()
                        .frame(width: 100, height: 30)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
            })
        }
    }
}

#Preview {
    NavigationStack{
        FeedView()
    }
}
