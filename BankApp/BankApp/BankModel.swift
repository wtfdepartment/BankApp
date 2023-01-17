//
//  BankModel.swift
//  BankApp
//
//  Created by Александра on 17.01.23.
//

import Foundation
import ObjectMapper

class BankModel: Mappable {
    var id: String?
    var area: String?
    var work_time: String?
    var currency: String?
    var lat: String?
    var lon: String?
    
    
    required init?(map: ObjectMapper.Map) {
        mapping(map: map)
    }
    
    func mapping(map: ObjectMapper.Map) {
        id          <- map["id"]
        area        <- map["area"]
        work_time   <- map["work_time"]
        currency    <- map["currency"]
        lat         <- map["gps_x"]
        lon         <- map["gps_y"]
    }
}
