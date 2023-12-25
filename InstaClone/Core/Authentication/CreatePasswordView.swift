//
//  CreatePasswordView.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 25/12/23.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing:12) {
            Text("Create a Password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your Password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            SecureField("Password", text: $password)
                .textInputAutocapitalization(.never)
                .modifier(TextFieldModifier())
                .padding(.top)
            
            NavigationLink {
                CompleteSignUpView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(.vertical)

                
            Spacer()
        }
        .toolbar(content: {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                })
            }
        })
    }
}

#Preview {
    CreatePasswordView()
}
