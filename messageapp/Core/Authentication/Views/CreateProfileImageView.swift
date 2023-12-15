//
//  CreateProfileImageView.swift
//  messageapp
//
//  Created by Marcelo Amaral Alves on 2023-12-13.
//

import SwiftUI
import PhotosUI

struct CreateProfileImageView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Add a profile image")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("This picture will be displayed to other users.")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
        }
    }
}

#Preview {
    CreateProfileImageView()
}
