//
//  AddUserViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 26.12.2020.
//  Copyright © 2020 ThePsih13. All rights reserved.
//

import UIKit
import RealmSwift

class AddUserViewController: UIViewController, UITextFieldDelegate {
   
    var realm = try! Realm()
  
    var newDebtors = Debtors(name: "", secondName: "", sum: "")
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var secondNameTextField: UITextField!
    @IBOutlet weak var sumTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        secondNameTextField.delegate = self
        sumTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "segue1" else { return }
        
        let name = nameTextField.text ?? ""
        let secondName = secondNameTextField.text ?? ""
        let sum = sumTextField.text ?? ""
        
        self.newDebtors = Debtors(name: name, secondName: secondName, sum: sum)
        
    }
    
    
    
}
