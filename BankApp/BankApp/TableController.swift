//
//  TableController.swift
//  BankApp
//
//  Created by Александра on 19.01.23.
//

import UIKit

class TableController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var gems = [GemModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        registerCell()
        getData()
    }
    
    private func getData() {
        GemProvider().gemData { result in
            self.gems = result
            self.tableView.reloadData()
        } failure: {
        }
        
    }
    
    private func registerCell() {
        let nib = UINib(nibName: GemCell.id, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: GemCell.id)
    }
    
//    private func gemFilter() {
//        let search = 1
//        let costsArray = [GemModel]()
//        var result = costsArray.filter{$0.gemCost(1)}
//            .map{($0.gemCost(searchString) ? 0 : 1, $0)}
//            .sort{$0 < $1}
//    }
}

extension TableController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GemCell.id, for: indexPath)
        guard let gemCell = cell as? GemCell else {return cell}

        gemCell.set(gem: gems[indexPath.row])
        return gemCell
    }
    
    
}
