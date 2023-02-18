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
                TopMoversView()
                Divider()
                //all coins views
                AllCoinsView()
            }.navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
