//
//  ProfileViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 10.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController{
    
    @IBOutlet weak var addMinusButton: UIButton!
    @IBOutlet weak var addPlusButton: UIButton!
    
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var youSumLabel: UILabel!
    @IBOutlet weak var allSum: UILabel!
    @IBOutlet weak var allSumYou: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static var name = ""
    static var lastName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileImage.layer.cornerRadius = 55
        nameLabel.text = UserDefaults.standard.string(forKey: "NameLabel")
        
//        addPlusButton.layer.borderWidth = 1
//        addMinusButton.layer.borderWidth = 1
//
//        addPlusButton.layer.borderColor = .init(red: 100.0, green: 100.0, blue: 100.0, alpha: 100.0)
//        addMinusButton.layer.borderColor = .init(red: 100.0, green: 100.0, blue: 100.0, alpha: 100.0)
        
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        self.allSumYou.text = "\(youAllSumProfile)"
        self.allSum.text = "\(allSumProfile)"
        completionInProfile = { labelColor, buttonColor in
            self.allSumYou.textColor = labelColor
            self.nameLabel.textColor = labelColor
            self.addMinusButton.backgroundColor = buttonColor
            self.addPlusButton.backgroundColor = buttonColor
            self.sumLabel.textColor = labelColor
            self.youSumLabel.textColor = labelColor
            self.allSum.textColor = labelColor
        }
    }
    
    @IBAction func unwindseguePro (_ segue: UIStoryboardSegue){
        guard segue.identifier == "UnwindseguePro" else { return }
        let segue = segue.source as! SettingsViewController
        
        let name = segue.profileName
        let lastName = segue.profileLastName
        
        nameLabel.text = "\(name.profileName ?? "")" + " " + "\(lastName.profileLastName ?? "")"
        UserDefaults.standard.set(nameLabel.text, forKey: "NameLabel")
    }
}
