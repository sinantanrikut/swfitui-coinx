//
//  TopMoversItemView.swift
//  CryptoCoin
//
//  Created by SINAN TANRIKUT on 18.02.2023.
//

import SwiftUI

struct TopMoversItemView: View {
    let coin : Coin
    
    var body: some View {
        VStack (alignment: .leading){
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom,8)
            //coin info
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                Text("$\(coin.currentPrice)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            //coin percent change
            Text("\(coin.priceChangePercentage24H)")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140,height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 17)
                .stroke(Color(.systemGray4), lineWidth: 1)
        )
    }
}
/*
struct TopMoversItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView()
    }
}
*/
