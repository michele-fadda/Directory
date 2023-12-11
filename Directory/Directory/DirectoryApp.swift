//
//  DirectoryApp.swift
//  Directory
//
//  Created by Michele Fadda on 11/12/2023.
//

import SwiftUI

@main
struct DirectoryApp: App {
    @StateObject var authViewModel = AuthViewModel()

       var body: some Scene {
           WindowGroup {
               if authViewModel.isAuthenticated {
                   ListView().environmentObject(authViewModel)
               } else {
                   LoginView(authViewModel: authViewModel)
               }
           }
       }
   }
