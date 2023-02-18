//
//  Double.swift
//  CryptoCoin
//
//  Created by SINAN TANRIKUT on 18.02.2023.
//

import Foundation

extension Double {
    private var currenctFormater : NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    func toCurrency()->String{
        return currenctFormater.string(for: self) ?? "$0.00"
        
    }
    func toPercentString()->String{
        guard let numberAsString = numberFormatter.string(for: self) else {return ""}
        return numberAsString + "%"
        
    }
 
}
