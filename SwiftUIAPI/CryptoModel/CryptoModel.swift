//
//  User.swift
//  SwiftUIAPI
//
//  Created by Alisher Tulembekov on 29.04.2024.
//

import Foundation

//api.coincap.io/v2/assets
enum Bitcoin {
    struct DataBitcoin: Codable {
        var data: [BitcoinInfo]
    }
    
    struct BitcoinInfo: Codable {
        var rank: String
        var symbol: String
        var name: String
        var priceUsd: String
    }
    
    struct BitcoinIdentifieble: Identifiable {
        var id = UUID()
        var rank: String
        var symbol: String
        var name: String
        var priceUsd: String
        
        init(_ Crypto: BitcoinInfo) {
            self.rank = Crypto.rank
            self.symbol = Crypto.symbol
            self.name = Crypto.name
            self.priceUsd = Crypto.priceUsd
        }
    }
}
