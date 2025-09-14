//
//  CircleButtonView.swift
//  Crypto
//
//  Created by Ana Polo on 14/9/25.
//

import SwiftUI

struct CircleButtonView: View {
    let iconName: String
    let theme = Color.theme

    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundStyle(theme.background)
            )
            .shadow(color: theme.accent.opacity(0.25),
                    radius: 10,
                    x: 0, y: 0)
            .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    Group {
        CircleButtonView(iconName: "info")

        CircleButtonView(iconName: "heart")
            .colorScheme(.dark)
    }
}
