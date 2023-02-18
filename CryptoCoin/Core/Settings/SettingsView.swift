//
//  SettingsView.swift
//  CryptoCoin
//
//  Created by SINAN TANRIKUT on 18.02.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack(spacing: 10){
            Text("Settings")
                .font(.headline)
            
                .fontWeight(.semibold)
            ScrollView{
                VStack{
                    ForEach(1 ..< 15 ) { _ in
                        SettingsItemView()
                    }
                }
            }
        }.padding(.top,20)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
