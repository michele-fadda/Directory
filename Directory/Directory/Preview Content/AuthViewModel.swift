//
//  ViewModel.swift
//  Directory
//
//  Created by Michele Fadda on 11/12/2023.
//

import Foundation
import Combine

class AuthViewModel: ObservableObject {
    @Published var isAuthenticated: Bool = false
    public func authenticate(username: String, password: String) {
        if username == "admin" && password == "password" {
            self.isAuthenticated = true
        } else {
            self.isAuthenticated = false
        }
    }
}

