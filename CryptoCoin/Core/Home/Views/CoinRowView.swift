//
//  CoinRowView.swift
//  CryptoCoin
//
//  Created by SINAN TANRIKUT on 18.02.2023.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin : Coin
    
    var body: some View {
        HStack{
            // market cap rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            // coin name info
            VStack(alignment: .leading, spacing: 4){
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.leading,6)
            }
            .padding(.leading,2)
            Spacer()
            // coin price info
            VStack(alignment: .trailing, spacing: 4){
                Text("$\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                Text("\(coin.priceChangePercentage24H)")
                    .font(.caption)
                    .foregroundColor(.red)
                    .padding(.leading,6)
            }
          
        }
        .padding(.horizontal)
        .padding(.vertical,4)
        Divider()
    }
}
/*
 
 struct CoinRowView_Previews: PreviewProvider {
     static var previews: some View {
         CoinRowView()
     }
 }


 */
