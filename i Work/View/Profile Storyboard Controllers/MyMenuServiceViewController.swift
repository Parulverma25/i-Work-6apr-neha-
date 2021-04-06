//
//  MyMenuServiceViewController.swift
//  i Work
//
//  Created by promatics on 01/04/21.
//

import Foundation
import UIKit

class MyMenuServiceViewController: UIViewController {
    
    // MARK:- Outlet

    @IBOutlet weak var myMenuTableView: UITableView!
    
    // MARK:- Variables
    
    var service : [String] = ["Nail Extensions", "Gel Nail Paints", "Nail Extensions", "Gel Nail Paints", "Nail Extensions", "Gel Nail Paints"]
    var price : [String] = ["$400", "$300", "$400", "$300", "$400", "$300"]
    
    // MARK:- Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        myMenuTableView.delegate = self
        myMenuTableView.dataSource = self
        myMenuTableView.tableFooterView = UIView()
    }
    
    // MARK:- Actions
    
    @IBAction func editMenuPressed(_ sender: GradientButton) {
        let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
        let vc1 = storyboard.instantiateViewController(identifier: "EditMyMenuViewController") as! EditMyMenuViewController
        self.navigationController?.pushViewController(vc1, animated: true)
    }
}


// MARK:- UITableViewDelegate, UITableViewDataSource

extension MyMenuServiceViewController: UITableViewDelegate, UITableViewDataSource{
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyMenuServiceTableViewCell
    
    cell.serviceName.text = self.service[indexPath.row]
    cell.servicePrice.text = self.price[indexPath.row]
    cell.selectionStyle = UITableViewCell.SelectionStyle.none
    return cell
}

}

