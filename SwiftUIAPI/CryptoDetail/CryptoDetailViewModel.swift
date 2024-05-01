//
//  CryptoViewModel.swift
//  SwiftUIAPI
//
//  Created by Alisher Tulembekov on 01.05.2024.
//

import Foundation

class CryptoDetailViewModel: ObservableObject {
    
    @Published var crypto: Bitcoin.BitcoinIdentifieble?
    
    init(crypto: Bitcoin.BitcoinIdentifieble? = nil) {
        self.crypto = crypto
    }
}
