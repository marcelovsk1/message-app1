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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CreateEmailView()
}
