//
//  AuthenticationViewModel.swift
//  messageapp
//
//  Created by Marcelo Amaral Alves on 2023-12-13.
//

import Foundation
import PhotosUI
import SwiftUI

class AuthenticationViewModel: ObservableObject {
    @Published var email = ""
    @Published var username = ""
    @Published var password = ""
    
    @Published var profileImage: Image?
    
    private var uiImage: UIImage?
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet {
            Task {
                await loadImage()
            }
        }
    }
    
    @MainActor
    func loadImage() async {
        guard let item = selectedImage else { return }
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }
        self.uiImage = uiImage
        self.profileImage = Image(uiImage: uiImage)
    }
}