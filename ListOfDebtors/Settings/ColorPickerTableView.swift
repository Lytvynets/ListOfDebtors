//
//  ColorPickerTableView.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 08.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit

class ColorPickerTableView: UITableViewController {
    
    var green = UIColor.green
    var orange = UIColor.orange
    var purpure = UIColor.purple
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
    }
    
    @IBAction func purpureaButtonAction(_ sender: UIButton) {
        completionTable?(purpure, green)
        completionSecondTable?(purpure, green)
        completionInSettings?(purpure, green)
        completionInProfile?(purpure, green)
        //Base.shared.allSaveColor(color: purpure)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func greenButtonAction(_ sender: UIButton) {
        completionTable?(green, orange)
        completionSecondTable?(green, orange)
        completionInSettings?(green, orange)
        completionInProfile?(green, orange)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func orangeButtonAction(_ sender: UIButton) {
        completionTable?(orange, green)
        completionSecondTable?(orange, green)
        completionInSettings?(orange, green)
        completionInProfile?(orange, green)
        self.dismiss(animated: true, completion: nil)
    }
}
