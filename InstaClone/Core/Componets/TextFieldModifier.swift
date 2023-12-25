//
//  TextFieldModifier.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 25/12/23.
//

import Foundation
import SwiftUI

struct TextFieldModifier:ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
        
    }
}
