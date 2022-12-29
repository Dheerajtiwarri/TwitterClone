//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Dheeraj on 19/02/22.
//

//28th Aug 2022 : Dheeraj : 3:14:12 : Start working on user image upload.
import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
  
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}

