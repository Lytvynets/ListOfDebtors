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
    @objc dynamic var secondName = ""
    @objc dynamic var sum = "" 
    
    convenience init(name: String, secondName:String, sum: String) {
        self.init()
        self.name = name
        self.secondName = secondName
        self.sum = sum
    }
    
}

