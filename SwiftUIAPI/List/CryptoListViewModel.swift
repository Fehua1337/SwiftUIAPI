//
//  CryptoListViewModel.swift
//  SwiftUIAPI
//
//  Created by Alisher Tulembekov on 29.04.2024.
//

import Foundation
import SwiftUI

class CryptoListViewModel: ObservableObject {
    
    private let manager = AlamofireManager.shared
    
    @Published var crypto = [Bitcoin.BitcoinIdentifieble]()
    
    func viewDidAppear() {
        getCrypto()
    }
    
    private func getCrypto() {
        manager.getBitcoinData { response in
            guard let crypto = response else { return }
            
            self.crypto = crypto
        }
    }
}

    
