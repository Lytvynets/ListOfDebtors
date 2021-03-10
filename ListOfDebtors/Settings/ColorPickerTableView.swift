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
    
    @IBOutlet weak var purpureButton: UIButton!
    
    var comp: ((UIColor) -> ())?
    
    @IBAction func purpureaButtonAction(_ sender: UIButton) {
        comp?(purpure)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func greenButtonAction(_ sender: UIButton) {
        comp?(green)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func orangeButtonAction(_ sender: UIButton) {
        comp?(orange)
        self.dismiss(animated: true, completion: nil)
    }
}
