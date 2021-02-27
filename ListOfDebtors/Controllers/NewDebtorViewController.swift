//
//  NewDebtorViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 27.02.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit
import RealmSwift

class NewDebtorViewController: UITableViewController, UITextFieldDelegate{
    
    var realm = try! Realm()
  
    var newDebtors = Debtors(name: "", secondName: "", sum: "")
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var sumTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        lastNameTextField.delegate = self
        sumTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "SaveSegue" else { return }
        
        let name = nameTextField.text ?? ""
        let secondName = lastNameTextField.text ?? ""
        let sum = sumTextField.text ?? ""
        
        self.newDebtors = Debtors(name: name, secondName: secondName, sum: sum)
        
    }
    
    
    
    
    
    
    
    
}
