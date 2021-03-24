//
//  SecondTableViewCell.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 06.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit

class SecondTableViewCell: TableViewCell {
    
    @IBOutlet weak var youOweNameLabel: UILabel!
    @IBOutlet weak var youOweLastNameLabel: UILabel!
    @IBOutlet weak var youOweSumLabel: UILabel!
    @IBOutlet weak var youOweNumberLabel: UILabel!
     
    func set(youDebtorArray: YouDebtors){
        self.youOweNameLabel.text = youDebtorArray.name
        self.youOweLastNameLabel.text = youDebtorArray.lastName
        self.youOweSumLabel.text = " - \(youDebtorArray.sum). \(youDebtorArray.currency)"
    }
}
