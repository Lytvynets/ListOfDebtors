//
//  ProfileViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 10.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit
import RealmSwift

var profileArray: Results<Profile>!

class ProfileViewController: UIViewController{
    
    @IBOutlet weak var addMinusButton: UIButton!
    @IBOutlet weak var addPlusButton: UIButton!
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var youSumLabel: UILabel!
    @IBOutlet weak var allSum: UILabel!
    @IBOutlet weak var allSumYou: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileImage.layer.cornerRadius = 55
        self.nameLabel.text = UserDefaults.standard.string(forKey: "NameLabel")
        self.profileImage.image = UIImage(data:  Base.shared.imageArrayPro.first?.imagePro ?? .init())
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
        let iamge = Base.shared.imageArrayPro[0].imagePro
        self.profileImage.image = UIImage(data: iamge!)
        self.nameLabel.text = "\(name.profileName ?? "")" + " " + "\(lastName.profileLastName ?? "")"
        UserDefaults.standard.set(nameLabel.text, forKey: "NameLabel")
    }
}
