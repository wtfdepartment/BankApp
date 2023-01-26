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
<<<<<<< Updated upstream
=======
    case gem
    case filials
    case ATM
>>>>>>> Stashed changes
}

extension BankAPI: TargetType{
    var baseURL: URL {
        return URL(string: "https://belarusbank.by/api")!
    }
    
    var path: String {
        switch self {
            case .adress:
                return "/atm"
<<<<<<< Updated upstream
=======
            case .gem:
                return "/getgems"
            case .filials:
                return "/filials_info"
            case .ATM:
                return "/atm"
>>>>>>> Stashed changes
        }
    }
    
    var method: Moya.Method {
        switch self {
<<<<<<< Updated upstream
            case .adress:
=======
            case .adress, .gem, .ATM, .filials:
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
=======
            case .gem:
                return nil
            case .filials:
                return nil
            case .ATM:
                return nil
>>>>>>> Stashed changes
        }
        
        return params
    }
    
    var encoding: ParameterEncoding {
        switch self {
<<<<<<< Updated upstream
            case .adress:
=======
            case .adress, .gem, .filials, .ATM:
>>>>>>> Stashed changes
                return URLEncoding.queryString
        }
    }
    
    
}
