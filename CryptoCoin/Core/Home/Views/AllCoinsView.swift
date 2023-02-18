//
//  AllCoinsView.swift
//  CryptoCoin
//
//  Created by SINAN TANRIKUT on 18.02.2023.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coins")
                .font(.headline)
                .padding()
            HStack{
                Text("Coin")
                Spacer()
                Text("Prices")
            }
            .foregroundColor(.gray)
            .padding(.horizontal)
            .font(.caption)
            
            ScrollView{
                VStack{
                    ForEach(0 ..< 50, id: \.self) { _ in
                        CoinRowView()
                    }
                }
            }
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
