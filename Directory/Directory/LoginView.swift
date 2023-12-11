//
//  LoginView.swift
//  Directory
//
//  Created by Michele Fadda on 11/12/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @ObservedObject var authViewModel: AuthViewModel

    var body: some View {
        NavigationView {
                    VStack {
                        TextField("Username", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.none) // Disable capitalization
                                                .disableAutocorrection(true) // Disable autocorrection

                            .padding()
                        SecureField("Password", text: $password)
                            .autocapitalization(.none) // Disable capitalization
                                                .disableAutocorrection(true) // Disable autocorrection
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        Button("Login") {
                            authViewModel.authenticate(username: username, password: password)
                        }
                        .padding()
                    }
                    .navigationTitle("Login")
                }
            }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        let authViewModel = AuthViewModel()
        LoginView(
            authViewModel: authViewModel)
    }
}
