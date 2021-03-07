//
//  SecondTableViewController.swift
//  List_Of_Debtors_Alpha0.2
//
//  Created by ThePsih13 on 06.03.2021.
//  Copyright © 2021 ThePsih13. All rights reserved.
//

import UIKit
import RealmSwift

var youDebtorArray: Results<YouDebtors>!

class SecondTableViewController: UITableViewController {

    var youDeb = youDebtorArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "list of debtors"
         
         self.tableView.separatorStyle = .singleLine
         self.tableView.separatorInset = .init(top: 0, left: 23, bottom: 0, right: 25)
         self.tableView.separatorColor = .lightGray
         self.tableView.tableFooterView = UIView()
         
         let realm = try! Realm()
        youDebtorArray = realm.objects(YouDebtors.self)
         self.tableView.reloadData()
      
    }

    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return youDebtorArray?.count ?? 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as! SecondTableViewCell
        
        let debtors = youDebtorArray[indexPath.row]
        
        cell.youOweNumberLabel.text = ("\(indexPath.row + 1)")
        
        cell.youOweNameLabel.text = debtors.name
        cell.youOweLastNameLabel.text = debtors.lastName
        cell.youOweSumLabel.text = (" - \(debtors.sum) ")
        
        return cell
    }
    
    
    // MARK: - Work with Segue
    @IBAction func Secondunwindsegue (_ segue: UIStoryboardSegue){
        guard segue.identifier == "SecondSaveSegue" else { return }
        let segue = segue.source as! YouNewDebtorViewController
        let newDebtor = segue.YouNewDebtors
        
        let realm = try! Realm()
        
        try! realm.write{
            realm.add(newDebtor)
            self.tableView.reloadData()
        }

    }
    
    
    // MARK: - Delete Cell
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        guard editingStyle == UITableViewCell.EditingStyle.delete else { return }
            
            let realm = try! Realm()
            
            let debtors = youDebtorArray[indexPath.row]
            
            try! realm.write{
                realm.delete(debtors)
                
                tableView.reloadData()
            
        }
    }
    

   

}
