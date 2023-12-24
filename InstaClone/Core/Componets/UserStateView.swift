//
//  UserStateView.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 24/12/23.
//

import SwiftUI

struct UserStateView: View {
    let value:Int
    let title:String
    var body: some View {
        VStack(content: {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        })
        .frame(width: 76)
    }
}

#Preview {
    UserStateView(value: 2, title: "Posts")
}
