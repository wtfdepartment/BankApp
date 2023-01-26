//
//  Cities.swift
//  BankApp
//
//  Created by Александра on 21.01.23.
//

import Foundation
import ObjectMapper
import UIKit
import Moya
import Moya_ObjectMapper

class City {
    var city = BankAPI.gem
    
    init(city: BankAPI = BankAPI.gem) {
        self.city = city
    }
}
