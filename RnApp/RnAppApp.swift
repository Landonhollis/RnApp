//
//  RnAppApp.swift
//  RnApp
//
//  Created by Landon Hollis on 2/5/25.
//

import SwiftUI

@main
struct RnAppApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

struct RootView: View {
    @State private var isDarkMode = false //declare @State here
    
    var body: some View {
        ContentView(isDarkMode: $isDarkMode) //pass binding to child view
    }
}
