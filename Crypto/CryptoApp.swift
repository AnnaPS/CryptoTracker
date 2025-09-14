//
//  CryptoApp.swift
//  Crypto
//
//  Created by Ana Polo on 14/9/25.
//

import SwiftUI

@main
struct CryptoApp: App {
    @State private var homeViewModel = HomeViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environment(homeViewModel)
        }
    }
}
