//
//  CanurrencySettilngViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 07.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit

class CanurrencySettilngViewController: UITableViewController {

    let usd = "USD"
    let uah = "UAH"
    let eur = "EUR"
    let rub = "RUB"
    let chf = "CHF"
    let gbp = "GBP"
    let btc = "BTC"
    
    
    var complition: ((String) -> ())?
    
    
    @IBAction func usdButton(_ sender: UIButton) {
        complition?(usd)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func uahButton(_ sender: UIButton) {
        complition?(uah)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func eurButton(_ sender: UIButton) {
        complition?(eur)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rubButton(_ sender: UIButton) {
        complition?(rub)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func chfButton(_ sender: UIButton) {
        complition?(chf)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func gbpButton(_ sender: UIButton) {
        complition?(gbp)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btcButton(_ sender: UIButton) {
        complition?(btc)
        self.dismiss(animated: true, completion: nil)
    }
    
}
