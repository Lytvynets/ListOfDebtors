//
//  CanurrencySettilngViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 07.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit

class CurrencySettingsViewController: UITableViewController {
    
    //Валюти
    let usd = "USD"
    let uah = "UAH"
    let eur = "EUR"
    let rub = "RUB"
    let chf = "CHF"
    let gbp = "GBP"
    let btc = "BTC"
    
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var uahLabel: UILabel!
    @IBOutlet weak var eurLabel: UILabel!
    @IBOutlet weak var rubLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var btcLabel: UILabel!
    
    @IBOutlet weak var usdButton: UIButton!
    @IBOutlet weak var uahButton: UIButton!
    @IBOutlet weak var eurButton: UIButton!
    @IBOutlet weak var rubButton: UIButton!
    @IBOutlet weak var chfButton: UIButton!
    @IBOutlet weak var gbpButton: UIButton!
    @IBOutlet weak var btcButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()

    }
    
    
    var completion: ((String) -> ())?
    
    
    //MARK:- Кнопки выбора валюты
    @IBAction func usdButton(_ sender: UIButton) {
        completion?(usd)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func uahButton(_ sender: UIButton) {
        completion?(uah)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func eurButton(_ sender: UIButton) {
        completion?(eur)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rubButton(_ sender: UIButton) {
        completion?(rub)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func chfButton(_ sender: UIButton) {
        completion?(chf)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func gbpButton(_ sender: UIButton) {
        completion?(gbp)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btcButton(_ sender: UIButton) {
        completion?(btc)
        self.dismiss(animated: true, completion: nil)
    }
}
