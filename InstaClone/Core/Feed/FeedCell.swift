//
//  FeedCell.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 24/12/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(content: {
            HStack(content: {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("Batman")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            })
            .padding(.leading)
            
            
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            HStack(spacing:16,content: {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                })
                
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                })
                Spacer()
                
            })
            .padding(.leading,8)
            .padding(.top,4)
            .foregroundStyle(.black)
            
            Text("23 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
            
            HStack(content: {
                Text("Batman ")
                    .fontWeight(.semibold)
                +
                
                Text("This is some test caption for now this is some caption now")
            })
            .frame(maxWidth: .infinity,alignment: .leading)
            .font(.footnote)
            .padding(.leading,10)
            .padding(.top,1)
            
            
            Text("6h ago")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
                .foregroundStyle(.gray )
            
            
        })
    }
}

#Preview {
    FeedCell()
}
