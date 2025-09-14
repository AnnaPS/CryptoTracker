//
//  ContentView.swift
//  Crypto
//
//  Created by Ana Polo on 14/9/25.
//

import SwiftUI

struct ContentView: View {
    let theme: ColorTheme = Color.theme
    
    var body: some View {
        ZStack {
            theme.background
                .ignoresSafeArea()
            VStack(spacing: 40) {
                Text("Hello, Accent!")
                    .foregroundStyle(theme.accent)
                Text("Hello, Secondary Text")
                    .foregroundStyle(theme.secondaryText)
                Text("Hello, Red")
                    .foregroundStyle(theme.red)
                Text("Hello, Green")
                    .foregroundStyle(theme.green)
            }
            .font(.largeTitle)
            .bold(true)
        }
    }
}

#Preview {
    ContentView()
}
