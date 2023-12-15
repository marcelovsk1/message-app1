//
//  CreateEmailView.swift
//  messageapp
//
//  Created by Marcelo Amaral Alves on 2023-12-01.
//

import SwiftUI

struct CreateEmailView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    @Environment(\.dismiss) var dismiss
    
    var isEmailValid: Bool {
        return viewModel.email.contains("@live.com")
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this e-mail to sign in to your account.")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("E-mail", text: $viewModel.email)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
                .padding(.top, 5)
            
            NavigationLink {
                CreateUsernameView()
            } label: {
                Text("Next")
                    .modifier(CustomButtonModifier())
                    .padding(.vertical)
            }
            
            Spacer()
        }
    }
}

#Preview {
    CreateEmailView()
}
