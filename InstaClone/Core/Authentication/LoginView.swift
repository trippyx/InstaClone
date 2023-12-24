//
//  LoginView.swift
//  InstaClone
//
//  Created by Kuldeep Singh on 24/12/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var passWord = ""
    
    var body: some View {
        NavigationStack {
            VStack(content: {
                Spacer()
                Image("insta")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                VStack(content: {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal,24)
                    
                    SecureField("Enter your Passoword", text: $passWord)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal,24)
                    
                })
                
                Button(action: {}, label: {
                    Text("Forgot Password ?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                })
                .frame(maxWidth: .infinity,alignment: .trailing)
                
                
                Button(action: {}, label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                })
                .padding(.vertical)
                
                
                HStack(content: {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2) - 40,height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2) - 40,height: 0.5)
                })
                .foregroundStyle(.gray)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    
                } label: {
                    HStack(spacing:3,content: {
                        Text("Don't have any account? ")
                        Text("Sign up")
                            .fontWeight(.semibold)
                    })
                    .font(.footnote)
                }
                .padding(.vertical,16)

                
            })
        }
    }
}

#Preview {
    LoginView()
}
