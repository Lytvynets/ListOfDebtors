//
//  NewDebtorViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 27.02.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit
import RealmSwift

class NewDebtorViewController: UITableViewController, UITextFieldDelegate {
    
    var realm = try! Realm()
    var canurrency = ""
    var newDebtors = Debtors(name: "", lastName: "", sum: 0, currency: "")
    
    //MARK: - Outlets для добавления в список
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var sumTextField: UITextField!
    @IBOutlet weak var currencyStaticLabel: UIButton!
    @IBOutlet weak var currencyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        lastNameTextField.delegate = self
        sumTextField.delegate = self
       
    }
    
    
    
    
    //Скрывает клавиатуру
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    //MARK: - Prepare for Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Передача данных про выбор валюты
        if segue.identifier == "CanurrencySegue"{
            if let canurrencyVC = segue.destination as? CurrencySettingsViewController {
                canurrencyVC.completion = {[weak self] text in
                    guard let self = self else { return }
                    self.currencyLabel.text = text
                    self.canurrency = text
                }
            }
        }
        
        //Передача данных
        guard segue.identifier == "SaveSegue" else { return }
        let name = nameTextField.text ?? ""
        let secondName = lastNameTextField.text ?? ""
        let sum = sumTextField.text ?? ""
        let currency = canurrency
        self.newDebtors = Debtors(name: name, lastName: secondName, sum: Int(sum) ?? 0, currency: currency)
    }
}
