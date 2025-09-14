//
//  CircleButtonAnimationView.swift
//  Crypto
//
//  Created by Ana Polo on 14/9/25.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    @Binding var animate: Bool

    var body: some View {
        Circle()
            .stroke(lineWidth: 5)
            .scale(animate ? 1 : 0)
            .opacity(animate ? 0 : 1)
            .animation(
                animate ? Animation.easeOut(duration: 1) : .none,
                value: animate
            )
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
        .frame(width: 100, height: 100)
}
