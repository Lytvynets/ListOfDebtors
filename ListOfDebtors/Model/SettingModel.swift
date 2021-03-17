//
//  SettingModel.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 10.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import Foundation

struct Profile {
    var profileName: String?
    var profileLastName: String?

    init(name: String) {
        self.profileName = name
    }
     
    init(lastName: String) {
        self.profileLastName = lastName
    }
}
