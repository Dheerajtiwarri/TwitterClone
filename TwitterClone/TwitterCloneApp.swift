//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Dheeraj on 19/02/22.
//

//27th June 2022 : Dheeraj : 2:24:13 : UI till login signup done.
import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                // ContentView()
                LoginView()
            }
        }
    }
}
