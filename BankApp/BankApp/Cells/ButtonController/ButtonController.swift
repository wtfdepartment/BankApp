//
//  ButtonController.swift
//  BankApp
//
//  Created by Александра on 17.01.23.
//

import UIKit


class ButtonController: UIViewController {
    static let id = String(describing: ButtonController.self)

    @IBOutlet weak var conteiner: UIView!
    @IBOutlet weak var cityButton: UIButton!
    
    var cities: BankAPI = .gem
    override func viewDidLoad() {
        super.viewDidLoad()
//        conteiner.layer.cornerRadius = 12
    }
//    func setupViewWidth(bankType: BankAPI) {
//        self.cities = bankType
//        conteiner.layer.borderWidth = self.select(Any?) ? 2 : 0
//        conteiner.layer.borderColor = gemCityName.borderColor.cgColor
//        conteiner.backgroundColor = gemCityName.tintColor
//        cityButton.text = gemCityName.rawValue
//    }
}
