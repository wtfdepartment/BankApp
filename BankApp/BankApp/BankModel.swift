//
//  BankModel.swift
//  BankApp
//
//  Created by Александра on 17.01.23.
//

import Foundation
import ObjectMapper

// MARK: BankModel
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
// MARK: GemModel
class GemModel: Mappable {
    var gemNumberOfAttestat: String = ""
    var gemForm: String = ""
    var gemWorkTime: String = ""
    var gemWeight: String = ""
    var gemColor: String = ""
    var gemCost: String = ""
    var gemFilialID: String = ""
    var gemCityName: String = ""
    
    required init?(map: ObjectMapper.Map) {
        mapping(map: map)
    }
    
    func mapping(map: ObjectMapper.Map) {
        gemNumberOfAttestat  <- map["attestat"]
        gemForm              <- map["name_ru"]
        gemWorkTime          <- map["grani"]
        gemWeight            <- map["weight"]
        gemColor             <- map["color"]
        gemCost              <- map["cost"]
        gemFilialID          <- map["filial_id"]
        gemCityName          <- map["name"]
    }
}

// MARK: ------------

//"attestat": "0015707",
//        "name_ru": "Круглый",
//        "grani": "57",
//        "weight": "0.17",
//        "color": "4/6Б",
//        "cost": "460.00",
//        "filial_id": "2475",
//        "sap_id": "50012813",
//        "info_worktime": "Пн 09 00 18 00    |Вт 09 00 18 00    |Ср 09 00 18 00    |Чт 09 00 18 00    |Пт 09 00 18 00    |Сб 09 00 15 00    |Вс        |",
//        "street_type": "ул.",
//        "street": "Козлова",
//        "filials_text": "Центр банковских услуг 633/Операционная служба",
//        "home_number": "23а",
//        "name": "Солигорск",
//        "name_type": "г."
//
