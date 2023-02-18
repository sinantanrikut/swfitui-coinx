//
//  TabbarView.swift
//  CryptoCoin
//
//  Created by SINAN TANRIKUT on 18.02.2023.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "homekit")
                Text("Home")
            }
            Text("Sayfa 2").tabItem {
                Image(systemName: "2.circle")
                Text("Sayfa 2")
            }
            Text("Sayfa 3").tabItem {
                Image(systemName: "3.circle")
                Text("Sayfa 3")
            }
            Text("Sayfa 4").tabItem {
                Image(systemName: "4.circle")
                Text("Sayfa 4")
            }
            Text("Sayfa 123").tabItem {
                Image(systemName: "5.circle")
                Text("Sayfa 5")
            }
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
