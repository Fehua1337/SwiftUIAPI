//
//  UserList.swift
//  SwiftUIAPI
//
//  Created by Alisher Tulembekov on 29.04.2024.
//

import Foundation
import SwiftUI

struct CryptoListView: View {
    
    @StateObject var viewModel: CryptoListViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Choose Crypto to view info")
            }
//            Spacer()
            VStack {
                    List(viewModel.crypto) { crypto in
                        NavigationLink {
                        CryptoDeatailView(viewModel: CryptoDetailViewModel(crypto: crypto))
                    } label: {
                    HStack {
                        Text(crypto.name)
                    }
                }
                }
            }
        }
        .onAppear(perform: {
            viewModel.viewDidAppear()
        })
        .padding()
    }
}
//#Preview {
//    CryptoListView(viewModel: Cr)
//}

