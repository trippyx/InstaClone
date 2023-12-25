//
//  CreateUserNamaView.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 25/12/23.
//

import SwiftUI

struct CreateUserNamaView: View {
    @State var userName = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing:12) {
            Text("Create Username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            TextField("Username", text: $userName)
                .textInputAutocapitalization(.never)
                .modifier(TextFieldModifier())
            
            NavigationLink {
                CreatePasswordView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
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
    CreateUserNamaView()
}
