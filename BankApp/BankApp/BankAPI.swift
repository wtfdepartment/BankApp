//
//  BankAPI.swift
//  BankApp
//
//  Created by Александра on 17.01.23.
//
import Foundation
import Moya

enum BankAPI {
    case adress
    case gem
}

extension BankAPI: TargetType{
    var baseURL: URL {
        return URL(string: "https://belarusbank.by/api")!
    }
    
    var path: String {
        switch self {
            case .adress:
                return "/atm"
            case .gem:
                return "/getgems"
        }
    }
    
    var method: Moya.Method {
        switch self {
            case .adress, .gem:
                return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Moya.Task {
        guard let parameters else { return .requestPlain }
        
        return .requestParameters(parameters: parameters, encoding: encoding)
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    var parameters: [String: Any]? {
        var params = [String: Any]()
        
        switch self {
            case .adress:
                params["city"] = "Минск"
            case .gem:
                return nil
        }
        
        return params
    }
    
    var encoding: ParameterEncoding {
        switch self {
            case .adress, .gem:
                return URLEncoding.queryString
        }
    }
    
    
}
