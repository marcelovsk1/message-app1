//
//  ContentView.swift
//  messageapp
//
//  Created by Marcelo Amaral Alves on 2023-11-30.
//

import SwiftUI

struct ContentView: View {
    @StateObject var authenticationViewModel = AuthenticationViewModel()
    
    var body: some View {
            LoginView()
            .environmentObject(authenticationViewModel)
    }
}

#Preview {
    ContentView()
}
