//
//  SettingsViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 01.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    var profileName = Profile(lastName: "")
    var profileLastName = Profile(lastName: "")
    
    let ressian = "Russian"
    let ukraine = "Ukraine"
    let english = "English"
    
    let defaults = UserDefaults.standard
    
    //MARK:- Outlets
    @IBOutlet weak var nameUserButton: UIButton!
    @IBOutlet weak var lastNameUserButton: UIButton!
    @IBOutlet weak var buttonMainColor: UIButton!
    @IBOutlet weak var nameUserLabel: UILabel!
    @IBOutlet weak var surnameUserLabel: UILabel!
    
    @IBOutlet weak var imageProfile: UIImageView!
    let picker = UIImagePickerController()
    let present = UIViewController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
        
        self.picker.delegate = self
        self.picker.allowsEditing = true
      

    }
    
    override func viewWillAppear(_ animated: Bool) {
        completionInSettings = { [self] labelColor, buttonColor in
            self.buttonMainColor.tintColor = buttonColor
            self.nameUserLabel.textColor = labelColor
            self.surnameUserLabel.textColor = labelColor
            self.nameUserButton.tintColor = buttonColor
            self.lastNameUserButton.tintColor = buttonColor
        }
    }
            
    
    //MARK:- Кнопки для авторизации пользователя
    
    @IBAction func addImageButton(_ sender: UIButton) {
    
        self.picker.sourceType = .photoLibrary
        self.present(picker, animated: true)
    }
    
    
    
    @IBAction func nameUserButtonAction(_ sender: UIButton) {
        let alert=UIAlertController(title: "Ведите имя", message: nil, preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: {(action:UIAlertAction) in
            let user = alert.textFields!
            
            self.profileName = Profile(name: user[0].text ?? "")
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
            self.profileLastName = Profile(lastName: user[0].text ?? "")
            self.surnameUserLabel.text = user[0].text
        }))
        present(alert, animated: true, completion: nil)
    }

    
}
