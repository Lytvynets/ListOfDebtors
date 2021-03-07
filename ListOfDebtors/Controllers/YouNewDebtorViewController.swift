//
//  YouNewDebtorViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 06.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit
import RealmSwift

class YouNewDebtorViewController: UITableViewController, UITextFieldDelegate {

    var realm = try! Realm()
  
    var YouNewDebtors = YouDebtors(name: "", lastName: "", sum: "")
    
    @IBOutlet weak var YounameTextField: UITextField!
    @IBOutlet weak var YoulastNameTextField: UITextField!
    @IBOutlet weak var YousumTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        YounameTextField.delegate = self
        YoulastNameTextField.delegate = self
        YousumTextField.delegate = self
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "SecondSaveSegue" else { return }
        
        let name = YounameTextField.text ?? ""
        let lastName = YoulastNameTextField.text ?? ""
        let sum = YousumTextField.text ?? ""
        
        self.YouNewDebtors = YouDebtors(name: name, lastName: lastName, sum: sum)
        
    }
    
 

}
