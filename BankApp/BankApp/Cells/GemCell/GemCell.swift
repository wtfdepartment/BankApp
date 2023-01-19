//
//  GemCell.swift
//  BankApp
//
//  Created by Александра on 19.01.23.
//

import UIKit

class GemCell: UITableViewCell {
    
    static let id = String(describing: GemCell.self)
    
    @IBOutlet weak var attestatLabel: UILabel!
    @IBOutlet weak var name_ruLabel: UILabel!
    @IBOutlet weak var graniLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var filials_textLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func set(gem: GemModel) {
        self.attestatLabel.text = "\(gem.gemNumberOfAttestat)"
        self.name_ruLabel.text = "\(gem.gemForm)"
        self.graniLabel.text = "\(gem.gemWorkTime)"
        self.weightLabel.text = "\(gem.gemWeight)"
        self.colorLabel.text = "\(gem.gemColor)"
        self.costLabel.text = "\(gem.gemCost)"
        self.nameLabel.text = "\(gem.gemFilialID)"
        self.filials_textLabel.text = "\(gem.gemCityName)"
    }
    
}
//func set(currency: CurrencyModel) {
//    self.currencyNameLabel.text = "\(currency.name), \(currency.abb)"
//    self.currencyRateLabel.text = "Курс:  \(currency.rate / Double(currency.scale))"
//}
