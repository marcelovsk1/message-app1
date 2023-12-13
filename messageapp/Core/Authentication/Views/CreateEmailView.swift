//
//  CreateEmailView.swift
//  messageapp
//
//  Created by Marcelo Amaral Alves on 2023-12-01.
//

import SwiftUI

struct CreateEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
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
            
            TextField("E-mail", text: $email)
        }
    }
}

#Preview {
    CreateEmailView()
}
