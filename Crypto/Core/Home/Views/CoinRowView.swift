//
//  CoinRowView.swift
//  Crypto
//
//  Created by Ana Polo on 14/9/25.
//

import SwiftUI

struct CoinRowView: View {
    let coin: CoinModel
    let theme = Color.theme
    let showHoldingsColumn: Bool

    var body: some View {
        HStack(spacing: 0) {
            leftColumnContent
            Spacer()
            if showHoldingsColumn {
                centerColumnContent
            }
            rightColumnContent
        }
        .font(.subheadline)
    }
}

extension CoinRowView {
    private var leftColumnContent: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(theme.secondaryText)
                .frame(minWidth: 30)

            Circle()
                .frame(width: 30, height: 30)
            Text("\(coin.symbol.uppercased())")
                .font(.headline)
                .padding(.leading, 6)
                .foregroundStyle(theme.accent)
        }
    }

    private var centerColumnContent: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
                .bold()
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundStyle(theme.accent)
    }

    private var rightColumnContent: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundStyle(theme.accent)
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "0.00%")
                .foregroundStyle(
                    (coin.priceChangePercentage24H ?? 0) >= 0
                        ? theme.green
                        : theme.red
                )
        }
        .frame(
            width: UIScreen.main.bounds.width / 3.5,
            alignment: .trailing
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinRowView(coin: .previewCoin, showHoldingsColumn: true)
        .padding()
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinRowView(coin: .previewCoin, showHoldingsColumn: true)
        .padding()
        .preferredColorScheme(.dark)
}
