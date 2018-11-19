//
//  ViewController.swift
//  ToDo
//
//  Created by zvbsm on 2018/11/18.
//  Copyright © 2018 Fernando Delgado. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["do a thing", "do another thing", "do more things"]

    override func viewDidLoad() {
        
        super.viewDidLoad()
    
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return itemArray.count
    
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var thisAccessory: UITableViewCell.AccessoryType = (tableView.cellForRow(at: indexPath)?.accessoryType)!
    
        if thisAccessory == .checkmark {
            thisAccessory = .none
        } else {
            thisAccessory = .checkmark
        }
        
        tableView.cellForRow(at: indexPath)?.accessoryType = thisAccessory
        
        tableView.deselectRow(at: indexPath, animated: true)
    
    }
    
}
