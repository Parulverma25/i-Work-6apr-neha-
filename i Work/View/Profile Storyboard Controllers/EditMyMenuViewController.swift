//
//  EditMyMenuViewController.swift
//  i Work
//
//  Created by promatics on 02/04/21.
//

import Foundation
import UIKit

class EditMyMenuViewController: UIViewController {

    @IBOutlet weak var editMyMenuTableView: UITableView!
    
    // MARK:- Variables
    
    var service : [String] = ["Nail Extensions", "Gel Nail Paints", "Nail Extensions", "Gel Nail Paints", "Nail Extensions", "Gel Nail Paints"]
    var price : [String] = ["$400", "$300", "$400", "$300", "$400", "$300"]
  
    // MARK:- Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editMyMenuTableView.delegate = self
        editMyMenuTableView.dataSource = self
        editMyMenuTableView.tableFooterView = UIView()
    }
    
}

// MARK:- UITableViewDelegate, UITableViewDataSource

extension EditMyMenuViewController: UITableViewDelegate, UITableViewDataSource{
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  print("")
    }


func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return service.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EditMyMenuServiceTableViewCell
    
    cell.serviceNameLabel.text = self.service[indexPath.row]
    cell.servicePriceLabel.text = self.price[indexPath.row]
    cell.selectionStyle = UITableViewCell.SelectionStyle.none
    return cell
}

}

