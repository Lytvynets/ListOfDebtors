//
//  SettingsViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 01.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    //Переключатели язика
    @IBOutlet weak var russianSwitch: UISwitch!
    @IBOutlet weak var ukrainianSwitch: UISwitch!
    @IBOutlet weak var englishSwitch: UISwitch!
    
    //Кнопки пользователя
    @IBOutlet weak var nameUserButton: UIButton!
    @IBOutlet weak var lastNameUserButton: UIButton!
    
    //Кнопки настройки вида
    @IBOutlet weak var buttonMainColor: UIButton!
    @IBOutlet weak var buttonTheme: UIButton!
    
    //Лейблы пользователя
    @IBOutlet weak var nameUserLabel: UILabel!
    @IBOutlet weak var surnameUserLabel: UILabel!
    
    
    var tableVC = TableViewController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
   //MARK:- Switch
    @IBAction func russianActionSwitch(_ sender: UISwitch) {
        ukrainianSwitch.isOn = false
        englishSwitch.isOn = false
        buttonTheme.setTitle("Тема", for: .normal)
        buttonMainColor.setTitle("Основной цвет", for: .normal)
        nameUserButton.setTitle("Имя", for: .normal)
        lastNameUserButton.setTitle("Фамилия", for: .normal)
        self.title = "Настройки"
        
    }
    
    @IBAction func ukrainianActionSwitch(_ sender: UISwitch) {
        russianSwitch.isOn = false
        englishSwitch.isOn = false
        buttonTheme.setTitle("Тема", for: .normal)
        buttonMainColor.setTitle("Основний колір", for: .normal)
        nameUserButton.setTitle("Імя", for: .normal)
        lastNameUserButton.setTitle("Прізвище", for: .normal)
        self.title = "Налаштування"
        
    }
    
    @IBAction func englishActionSwitch(_ sender: UISwitch) {
        russianSwitch.isOn = false
        ukrainianSwitch.isOn = false
        buttonTheme.setTitle("Theme", for: .normal)
        buttonMainColor.setTitle("Main Color", for: .normal)
        nameUserButton.setTitle("Name", for: .normal)
        lastNameUserButton.setTitle("Last name", for: .normal)
        self.title = "Settings"
    }
    
    
    
    //MARK:- Button User identification
    @IBAction func nameUserButtonAction(_ sender: UIButton) {
    }
    
    
    @IBAction func surnameUserButtonAction(_ sender: UIButton) {
    }
    
    
    

    
}
