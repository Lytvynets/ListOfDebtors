//
//  TableViewCell.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 24.02.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//


import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var NameOut: UILabel!
    @IBOutlet weak var secondNameOut: UILabel!
    @IBOutlet weak var SumOut: UILabel!
    @IBOutlet weak var number: UILabel!
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    func set(debtorsArray: Debtors){
        self.NameOut.text = debtorsArray.name
        self.secondNameOut.text = debtorsArray.secondName
        self.SumOut.text = debtorsArray.sum
       }



}

