//
//  HomeView.swift
//  Crypto
//
//  Created by Ana Polo on 14/9/25.
//

import SwiftUI

struct HomeView: View {
    let theme = Color.theme
    @State private var showPortfolio = false

    var body: some View {
        ZStack {
            theme.background
                .ignoresSafeArea()
            VStack {
                Header(showPortfolio: $showPortfolio)

                Spacer(minLength: 0)
            }
        }
    }
}

struct Header: View {
    let theme = Color.theme
    @Binding var showPortfolio: Bool

    var body: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .animation(.none, value: showPortfolio)
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundStyle(theme.accent)
                .animation(.none, value: showPortfolio)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    NavigationView {
        HomeView()
            .navigationBarHidden(true)
    }
}
