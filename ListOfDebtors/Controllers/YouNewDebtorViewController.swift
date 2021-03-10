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
    var youCanurrency = ""
    var youNewDebtors = YouDebtors(name: "", lastName: "", sum: "", currency: "")
    
    //MARK: - Outlets для добавления в список
    @IBOutlet weak var youNameTextField: UITextField!
    @IBOutlet weak var youLastNameTextField: UITextField!
    @IBOutlet weak var youSumTextField: UITextField!
    //Выбор валюты
    @IBOutlet weak var youCurrencyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        youNameTextField.delegate = self
        youLastNameTextField.delegate = self
        youSumTextField.delegate = self
    }
    
    //Скрывает клавиатуру
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    //MARK: - Prepare for Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Передача данных про выбор валюты
        if segue.identifier == "YouCanurrencySegue"{
            if let canurrencyVC = segue.destination as? CurrencySettingsViewController {
                canurrencyVC.completion = {[weak self] text in
                    guard let self = self else { return }
                    self.youCurrencyLabel.text = text
                    self.youCanurrency = text
                }
            }
        }
        
        //Передача данныйх
        guard segue.identifier == "SecondSaveSegue" else { return }
        let name = youNameTextField.text ?? ""
        let lastName = youLastNameTextField.text ?? ""
        let sum = youSumTextField.text ?? ""
        let youcurrency = youCanurrency
        self.youNewDebtors = YouDebtors(name: name, lastName: lastName, sum: sum, currency: youcurrency)
    }
}
