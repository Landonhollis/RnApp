//
//  ContentViewModel.swift
//  RnApp
//
//  Created by Landon Hollis on 2/5/25.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    // A simple flag for dark mode.
    @Published var isDarkMode: Bool = false
    
    /// Toggles between dark and light mode.
    func toggleAppearance() {
        isDarkMode.toggle()
    }
}
