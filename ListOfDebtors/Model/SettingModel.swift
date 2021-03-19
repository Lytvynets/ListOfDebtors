//
//  SettingModel.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 10.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import Foundation
import RealmSwift

class Profile: Object {
    @objc dynamic var profileName: String?
    @objc dynamic var profileLastName: String?
    @objc dynamic var imageData: Data?
    
    convenience init(imageData: Data) {
        self.init()
        self.imageData = imageData
    }
    
    convenience  init(name: String) {
        self.init()
        self.profileName = name
    }
     
    convenience  init(lastName: String) {
        self.init()
        self.profileLastName = lastName
    }
}
