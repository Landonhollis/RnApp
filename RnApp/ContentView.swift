//
//  ContentView.swift
//  RnApp
//
//  Created by Landon Hollis on 2/5/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var isDarkMode: Bool
    
    var body: some View {
        ZStack {
            Color("AppBackgroundColor")
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Top section (1/10th of screen)
                ZStack(alignment: .bottom) {
                    HStack {
                        // "R/N" text
                        Text("R/N")
                            .font(.custom("Times New Roman", size: UIScreen.main.bounds.height/40))
                            .foregroundColor(Color("LinesAndTextColor"))
                            .padding(.leading, UIScreen.main.bounds.width/10)
                        
                        Spacer()
                        
                        // Appearance toggle button
                        Button(action: {
                            isDarkMode.toggle()
                        }) {
                            Text("Appearance")
                                .font(.custom("Times New Roman", size: UIScreen.main.bounds.height/50))
                                .foregroundColor(Color("LinesAndTextColor"))
                                .padding(.horizontal, 15)
                                .padding(.vertical, 8)
                                .background(Color("AppSecondaryColor"))
                                .cornerRadius(15)
                        }
                        .padding(.trailing, 20)
                    }
                    .frame(height: UIScreen.main.bounds.height/10)
                    
                    // Bottom line
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color("LinesAndTextColor"))
                }
                
                Spacer()
            }
        }
    }
}


