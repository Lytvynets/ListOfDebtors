//
//  ProfileViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 10.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController{
    
    @IBOutlet weak var allSum: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileImage.layer.cornerRadius = 50
    }
    
    @IBAction func unwindseguePro (_ segue: UIStoryboardSegue){
        guard segue.identifier == "UnwindseguePro" else { return }
        let segue = segue.source as! SettingsViewController
        let name = segue.mainUserName
        let lastName = segue.mainUserLastName
        nameLabel.text = name.profileName
        lastNameLabel.text =  lastName.profileLastName
    }
}
