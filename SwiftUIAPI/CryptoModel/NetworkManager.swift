//
//  NetworkManager.swift
//  SwiftUIAPI
//
//  Created by Alisher Tulembekov on 29.04.2024.
//

import Foundation
import Alamofire

class AlamofireManager {
    static let shared = AlamofireManager()
    func getBitcoinData(completion: @escaping ([Bitcoin.BitcoinIdentifieble]?) -> Void) {
        let url = URL(string: "https://api.coincap.io/v2/assets")!
        
        AF.request(url).response { response in
            
            if let data = response.data {
                let decoder = JSONDecoder()
                do {
                    let cryptoResponse = try decoder.decode(Bitcoin.DataBitcoin.self, from: data)
                    var finalCrypto = [Bitcoin.BitcoinIdentifieble]()
                    for i in cryptoResponse.data {
                        finalCrypto.append(Bitcoin.BitcoinIdentifieble(i))
                    }
                    completion(finalCrypto)
                } catch {
                    print (error)
                    completion(nil)
                }
            }
        }
    }    
}
