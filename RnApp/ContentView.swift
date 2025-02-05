//
//  ContentView.swift
//  RnApp
//
//  Created by Landon Hollis on 2/5/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                TopSectionView(height: geometry.size.height / 10, viewModel: viewModel)
                Spacer()
            }
        }
        .preferredColorScheme(viewModel.isDarkMode ? .dark : .light)
        .edgesIgnoringSafeArea(.top)
    }
}

struct TopSectionView: View {
    let height: CGFloat
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        ZStack(alignment: .top) {
            // Background Color
            Color("AppBackgroundColor")
                .frame(height: height)

            HStack {
                // Left-side "R/N" text
                Text("R/N")
                    .font(.custom("Times New Roman", size: height * 0.4))
                    .foregroundColor(Color("LinesAndTextColor"))
                    .padding(.leading, height * 0.5)

                Spacer()

                // Right-side button
                Button(action: {
                    viewModel.toggleAppearance()
                }) {
                    VStack(spacing: 2) { // Stack for two lines of text
                        Text("Dark Mode")
                        Text("Light Mode")
                    }
                    .font(.custom("Times New Roman", size: height * 0.2))
                    .foregroundColor(Color("LinesAndTextColor"))
                    .padding(.vertical, height * 0.15)
                    .frame(width: height * 2, height: height * 0.8)
                }
                .background(Color("AppSecondaryColor"))
                .cornerRadius(height * 0.4)
                .padding(.trailing, height * 0.5)
            }
            .frame(height: height)

            // Bottom thin bar
            VStack {
                Spacer()
                Rectangle()
                    .fill(Color("LinesAndTextColor"))
                    .frame(height: 1)
                    .frame(maxWidth: .infinity)
            }
        }
    }
}

final class ContentViewModel: ObservableObject {
    @Published var isDarkMode: Bool = false
    
    func toggleAppearance() {
        isDarkMode.toggle()
    }
}
