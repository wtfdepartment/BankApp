//
//  CityCollectionViewCell.swift
//  BankApp
//
//  Created by Александра on 24.01.23.
//

import UIKit

class CityCollectionViewCell: UICollectionViewCell {
    
    static let id = String(describing: CityCollectionViewCell.self)

    @IBOutlet weak var cityCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setName(names: String) {
        cityCell.text = names
    }

}
