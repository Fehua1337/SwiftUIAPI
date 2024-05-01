//
//  CryptoDeatail.swift
//  SwiftUIAPI
//
//  Created by Alisher Tulembekov on 01.05.2024.
//

import Foundation
import SwiftUI

struct CryptoDeatailView: View {
    
    @StateObject var viewModel: CryptoDetailViewModel
    
    var body: some View {
        
        VStack {
            Text("Details")
                .font(.title)
            
            Text(viewModel.crypto?.name ?? "")
            Text(viewModel.crypto?.priceUsd ?? "")
            Text(viewModel.crypto?.rank ?? "")
            Text(viewModel.crypto?.symbol ?? "")
        }
        
    }
}
