//
//  TableViewController.swift
//  List_Of_Debtors_Alpha0.1
//
//  Created by ThePsih13 on 30.11.2020.
//  Copyright © 2020 ThePsih13. All rights reserved.
//

import RealmSwift
import Foundation

var debtorsArray: Results<Debtors>!

class TableViewController: UITableViewController {
    
    var deb = debtorsArray
    var dro = ""
    var newDebtorViewController = NewDebtorViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.title = "list of debtors"
        
        self.tableView.separatorStyle = .singleLine
        self.tableView.separatorInset = .init(top: 0, left: 23, bottom: 0, right: 25)
        self.tableView.separatorColor = .lightGray
        self.tableView.tableFooterView = UIView()
        
        let realm = try! Realm()
        debtorsArray = realm.objects(Debtors.self)
        self.tableView.reloadData()
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        <#code#>
//    }

    
    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return debtorsArray?.count ?? 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        let debtors = debtorsArray[indexPath.row]
        
        cell.numberLabel.text = ("\(indexPath.row + 1)")
        
        cell.nameLabel.text = debtors.name
        cell.lastNameLabel.text = debtors.lastName
        cell.sumLabel.text = ("\(debtors.sum) \(debtors.currency) ")
       
        
        return cell
    }
    
    
    // MARK: - Work with Segue
    @IBAction func unwindsegue (_ segue: UIStoryboardSegue){
        guard segue.identifier == "SaveSegue" else { return }
        let segue = segue.source as! NewDebtorViewController
       
        let newDebtor = segue.newDebtors
        
        dro = segue.canurrency
        
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
            
            let debtors = debtorsArray[indexPath.row]
            
            try! realm.write{
                realm.delete(debtors)
                
                tableView.reloadData()
            
        }
    }
    
    
    
    
    
    
}

