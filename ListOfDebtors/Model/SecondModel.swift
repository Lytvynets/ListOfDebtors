//
//  SecondModel.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 06.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import Foundation
import RealmSwift

class YouDebtors: Object {
    @objc dynamic var name = ""
    @objc dynamic var lastName = ""
    @objc dynamic var sum = ""
    
    convenience init(name: String, lastName: String, sum: String) {
        self.init()
        self.name = name
        self.lastName = lastName
        self.sum = sum
    }
    
}
