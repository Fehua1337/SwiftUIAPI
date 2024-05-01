//
//  SwiftUIAPIApp.swift
//  SwiftUIAPI
//
//  Created by Alisher Tulembekov on 29.04.2024.
//

import SwiftUI

@main
struct SwiftUIAPIApp: App {
    var body: some Scene {
        WindowGroup {
            CryptoListView(viewModel: CryptoListViewModel())
        }
    }
}
