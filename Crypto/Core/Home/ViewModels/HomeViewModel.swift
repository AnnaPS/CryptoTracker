//
//  HomeViewModel.swift
//  Crypto
//
//  Created by Ana Polo on 14/9/25.
//

import Foundation

@Observable class HomeViewModel {
    var allCoins: [CoinModel] = []
    var portfolioCoins: [CoinModel] = []

    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.allCoins.append(.previewCoin)
            self.portfolioCoins.append(.previewCoin)
        }
    }
}
