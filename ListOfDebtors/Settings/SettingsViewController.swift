//
//  SettingsViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 01.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {

    var mainUserName = ProfileName(profileName: "")
    var mainUserLastName = ProfileLastName(profileLastName: "")
    
    //MARK:- Outlets
    @IBOutlet weak var rusLabel: UILabel!
    @IBOutlet weak var uaLabel: UILabel!
    @IBOutlet weak var engLebel: UILabel!
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
    
    
    //MARK:- Переключатели языка
    //Русский
    @IBAction func russianActionSwitch(_ sender: UISwitch) {
        ukrainianSwitch.isOn = false
        englishSwitch.isOn = false
        buttonTheme.setTitle("Тема", for: .normal)
        buttonMainColor.setTitle("Основной цвет", for: .normal)
        nameUserButton.setTitle("Имя", for: .normal)
        lastNameUserButton.setTitle("Фамилия", for: .normal)
        self.title = "Настройки"
    }
    
    //Украинский
    @IBAction func ukrainianActionSwitch(_ sender: UISwitch) {
        russianSwitch.isOn = false
        englishSwitch.isOn = false
        buttonTheme.setTitle("Тема", for: .normal)
        buttonMainColor.setTitle("Основний колір", for: .normal)
        nameUserButton.setTitle("Імя", for: .normal)
        lastNameUserButton.setTitle("Прізвище", for: .normal)
        self.title = "Налаштування"
    }
    
    //Англиский
    @IBAction func englishActionSwitch(_ sender: UISwitch) {
        russianSwitch.isOn = false
        ukrainianSwitch.isOn = false
        buttonTheme.setTitle("Theme", for: .normal)
        buttonMainColor.setTitle("Main Color", for: .normal)
        nameUserButton.setTitle("Name", for: .normal)
        lastNameUserButton.setTitle("Last name", for: .normal)
        self.title = "Settings"
    }
    
    //MARK: - Prepare For Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ColorPickerSegue"{
            if let colorVC = segue.destination as? ColorPickerTableView{
                colorVC.comp = {[weak self] color in
                    guard let self = self else { return }
                    self.buttonTheme.tintColor = color
                    self.buttonMainColor.tintColor = color
                    self.nameUserLabel.textColor = color
                    self.surnameUserLabel.textColor = color
                    self.rusLabel.textColor = color
                    self.uaLabel.textColor = color
                    self.engLebel.textColor = color
                    self.nameUserButton.tintColor = color
                    self.lastNameUserButton.tintColor = color
                }
            }
        }
    }
    
    //MARK:- Кнопки для авторизации пользователя
    @IBAction func nameUserButtonAction(_ sender: UIButton) {
        let alert=UIAlertController(title: "Ведите имя", message: nil, preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: {(action:UIAlertAction) in
            let user = alert.textFields!
            self.mainUserName = ProfileName(profileName: user[0].text)
            self.nameUserLabel.text = user[0].text
        }))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func surnameUserButtonAction(_ sender: UIButton) {
        let alert=UIAlertController(title: "Ведите Фамилию", message: nil, preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: {(action:UIAlertAction) in
            let user = alert.textFields!
            self.mainUserLastName = ProfileLastName(profileLastName: user[0].text)
            self.surnameUserLabel.text = user[0].text
        }))
        present(alert, animated: true, completion: nil)
    }
}
