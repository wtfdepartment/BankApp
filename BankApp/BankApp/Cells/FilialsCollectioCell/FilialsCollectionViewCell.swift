//
//  FilialsCollectionViewCell.swift
//  BankApp
//
//  Created by Александра on 24.01.23.
//

import UIKit

class FilialsCollectionViewCell: UICollectionViewCell {
    
    static let id = String(describing: FilialsCollectionViewCell.self)

    @IBOutlet weak var filialCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setName(name: String) {
        filialCell.text = name
    }

}
