//
//  ContentView.swift
//  RnApp
//
//  Created by Landon Hollis on 2/5/25.
//

import SwiftUI

struct TopSectionView: View {
    @Binding var isDarkMode: Bool
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                Color("AppBackgroundColor")
                
                VStack(spacing: 0) {
                    HStack {
                        Text("R/N")
                            .font(.custom("TimesNewRoman", size: geometry.size.height * 0.05))
                            .foregroundColor(Color("LinesAndTextColor"))
                            .frame(height: geometry.size.height * 0.1 / 2)
                            .padding(.leading, geometry.size.width * 0.05)
                        
                        Spacer()
                        
                        Button(action: {
                            isDarkMode.toggle()
                        }) {
                            Text("Appearance")
                                .font(.custom("TimesNewRoman", size: geometry.size.height * 0.02))
                                .foregroundColor(Color("LinesAndTextColor"))
                                .padding(.vertical, 5)
                                .padding(.horizontal, 10)
                                .background(Color("AppSecondaryColor"))
                                .cornerRadius(10)
                        }
                        .padding(.trailing, geometry.size.width * 0.05)
                    }
                    .frame(height: geometry.size.height * 0.1)
                    
                    Rectangle()
                        .fill(Color("LinesAndTextColor"))
                        .frame(height: 1)
                }
            }
            .frame(height: geometry.size.height * 0.1)
        }
    }
}

struct TopSectionView_Previews: PreviewProvider {
    static var previews: some View {
        TopSectionView(isDarkMode: .constant(false))
    }
}

