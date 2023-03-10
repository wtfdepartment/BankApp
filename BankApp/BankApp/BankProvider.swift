//
//  BankProvider.swift
//  BankApp
//
//  Created by Александра on 17.01.23.
//


import Foundation
import Moya
import Moya_ObjectMapper

final class BelarusBankProvider {
    private let provider = MoyaProvider<BankAPI>(plugins: [NetworkLoggerPlugin()])
    
    func bankAdress(bankBlock: @escaping ([BankModel]) -> Void, failure: (() -> Void)? = nil) {
        provider.request(.adress) { result in
            switch result {
                case .success(let response):
                    guard let adress = try? response.mapArray(BankModel.self) else { return }
                    bankBlock(adress)
                    
                case .failure(let error):
                    print(error.localizedDescription)
                    failure?()
            }
        }
    }
}

final class GemProvider {
    private let provider = MoyaProvider<BankAPI>(plugins: [NetworkLoggerPlugin()])
    
    func gemData(bankBlock: @escaping ([GemModel]) -> Void, failure: (() -> Void)? = nil) {
        provider.request(.gem) { result in
            switch result {
                case .success(let response):
                    guard let adress = try? response.mapArray(GemModel.self) else { return }
                    bankBlock(adress)
                    
                case .failure(let error):
                    print(error.localizedDescription)
                    failure?()
            }
        }
    }
}
