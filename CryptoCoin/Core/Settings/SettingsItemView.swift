//
//  SettingsItemView.swift
//  CryptoCoin
//
//  Created by SINAN TANRIKUT on 18.02.2023.
//

import SwiftUI

struct SettingsItemView: View {
    var body: some View {
        HStack(){
            VStack(alignment: .leading){
                Text("Hesabım")
                    .font(.subheadline)
                Text("Test deneme yazı")
                    .font(.caption)
            }
            Spacer()
        }.padding()
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(.systemGray6), lineWidth: 1)
            )
    }
}

struct SettingsItemView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsItemView()
    }
}
