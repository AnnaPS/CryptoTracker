//
//  HomeViewModel.swift
//  Crypto
//
//  Created by Ana Polo on 14/9/25.
//

import Combine
import Foundation

@Observable class HomeViewModel {
    var allCoins: [CoinModel] = []
    var portfolioCoins: [CoinModel] = []

    private let dataService = CoinDataService()
    private var cancellables: Set<AnyCancellable> = []

    init() {
        addSubscribers()
    }

    func addSubscribers() {
        // Subscribe to the publisher
        dataService.$allCoins
            .sink(receiveValue: { [weak self] coins in
                self?.allCoins = coins
            })
            .store(in: &cancellables)
    }
}
