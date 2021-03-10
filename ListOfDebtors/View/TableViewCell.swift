//
//  TableViewCell.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 24.02.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//


import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    func set(debtorsArray: Debtors){
        self.nameLabel.text = debtorsArray.name
        self.lastNameLabel.text = debtorsArray.lastName
        self.sumLabel.text = ("\(debtorsArray.sum) - \(debtorsArray.currency)")
    }
}
