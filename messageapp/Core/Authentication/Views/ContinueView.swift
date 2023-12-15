//
//  ContinueView.swift
//  messageapp
//
//  Created by Marcelo Amaral Alves on 2023-12-15.
//

import SwiftUI

struct ContinueView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
    var body: some View {
        VStack {
            Text("Welcome to ZapzAPP, \(viewModel.username)")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click continue to get started")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                .padding()
            
            Button {
                //
            } label: {
                HStack {
                    Image(systemName: "arrow.forward.circle.fill")
                        .imageScale(.large)
                    Text("Continue")
                        .font(.title)
                }
                .foregroundColor(.blue)
            }
            .padding(.top, 2)
        }
    }
}

//#Preview {
//    ContinueView()
//}
