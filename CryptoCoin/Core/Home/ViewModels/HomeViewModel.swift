//
//  HomeViewModel.swift
//  CryptoCoin
//
//  Created by SINAN TANRIKUT on 18.02.2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var coins = [Coin]()
    @Published var topMovingCoins = [Coin]()
     
     init() {
         fetchCoins()
     }
     
     func fetchCoins() {
         if let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h") {
             URLSession.shared.dataTask(with: url) { data, response, error in
                 if let data = data {
                     do {
                         let decodedResponse = try JSONDecoder().decode([Coin].self, from: data)
                         DispatchQueue.main.async {
                             self.coins = decodedResponse
                             self.configureToMovingCoins()
                             print("DEBUG: Coins \(decodedResponse)")
                         }
                     } catch let error {
                         print("Error: \(error)")
                     }
                 }
             }.resume()
         }
     }
    func configureToMovingCoins(){
        let topMovers = coins.sorted(by: { $0.priceChangePercentage24H > $1.priceChangePercentage24H})
        self.topMovingCoins = Array(topMovers.prefix(5))
    }
}
