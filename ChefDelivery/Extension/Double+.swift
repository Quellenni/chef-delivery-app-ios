//
//  Double+.swift
//  ChefDelivery
//
//  Created by Quellenni Barreto on 01/07/23.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
