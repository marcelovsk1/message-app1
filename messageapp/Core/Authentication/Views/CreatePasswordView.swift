//
//  CreatePasswordView.swift
//  messageapp
//
//  Created by Marcelo Amaral Alves on 2023-12-13.
//

import SwiftUI

struct CreatePasswordView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Create your password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this password to sign in to your account.")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $viewModel.password)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
                .padding(.top, 5)
            
            NavigationLink {
                CreateProfileImageView()
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
    CreatePasswordView()
}
