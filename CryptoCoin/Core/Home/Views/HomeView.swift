//
//  HomeView.swift
//  CryptoCoin
//
//  Created by SINAN TANRIKUT on 18.02.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false ){
                //top movers view
                TopMoversView(viewModel: viewModel)
                    .redacted(reason: viewModel.loading ? .placeholder : .privacy)
                Divider()
                //all coins views
                AllCoinsView(viewModel: viewModel)
                    .redacted(reason: viewModel.loading ? .placeholder : .privacy)
            }.navigationTitle("Live Prices")
                .refreshable {
                    viewModel.fetchCoins()
                }
                
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
