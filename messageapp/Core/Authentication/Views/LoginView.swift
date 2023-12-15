//
//  LoginView.swift
//  messageapp
//
//  Created by Marcelo Amaral Alves on 2023-11-30.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    @State private var email = ""
    @State private var password = ""
    
    var isLoginValid: Bool {
        email.contains("@live.com") && password.count >= 6
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Image("messengerapp")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 220)
                
                TextField("Enter your e-mail", text: $email)
                    .autocapitalization(.none)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
         
                SecureField("Enter your password", text: $password)
                    .autocapitalization(.none)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                    .padding(.top, 5)
                
                Button {
                    //
                } label: {
                    Text("Login")
                        .modifier(CustomButtonModifier())
                        .padding(.vertical)
                }
                .opacity(isLoginValid ? 1.0 : 0.9)
                .brightness(isLoginValid ? 0.0 : -0.2)
                .disabled(!isLoginValid)
                
                NavigationLink {
                    CreateEmailView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack {
                        Text("No account?")
                            .foregroundColor(.black)
                        Text("Sign up!")
                    }
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    LoginView()
}


struct CustomButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 360, height: 44)
            .background(Color(.systemBlue))
            .cornerRadius(8)
    }
}
