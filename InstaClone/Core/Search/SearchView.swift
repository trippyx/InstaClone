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
                    ForEach(0...15,id:\.self) { id in
                        HStack {
                            Image("batman")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            
                            VStack(alignment:.leading,content: {
                                Text("Batman")
                                    .fontWeight(.semibold)
                                
                                Text("Bruce Wyance")
                            })
                            .font(.footnote)
                            Spacer()
                            
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top,8)
                .searchable(text: $searchText,prompt: "Search")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
