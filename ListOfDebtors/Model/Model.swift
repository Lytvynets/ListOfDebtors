//
//  Model.swift
//  List_Of_Debtors_Alpha0.1
//
//  Created by ThePsih13 on 30.11.2020.
//  Copyright © 2020 ThePsih13. All rights reserved.
//

import Foundation
import RealmSwift

class Debtors: Object {
    @objc dynamic var name = ""
    @objc dynamic var lastName = ""
    @objc dynamic var sum = ""
    @objc dynamic var currency = ""
    
    convenience init(name: String, lastName: String, sum: String, currency: String) {
        self.init()
        self.name = name
        self.lastName = lastName
        self.sum = sum
        self.currency = currency
    }
}

