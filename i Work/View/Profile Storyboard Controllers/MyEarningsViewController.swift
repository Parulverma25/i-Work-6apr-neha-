//
//  MyEarningsViewController.swift
//  i Work
//
//  Created by promatics on 02/04/21.
//

import Foundation
import UIKit

class MyEarningsViewController: UIViewController {

    // MARK:- Outlets
    
    @IBOutlet weak var myEarningsTableView: UITableView!
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    
    // MARK:- Variables
    
    var fullname : [String] = ["Jane Doe", "Peter Parker", "Emily Rose"]
    var details : [String] = ["Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit ", "Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit"]
    var date : [String] = ["Apr 2, 2021", "Apr 2, 2021", "Apr 2, 2021"]
    var cash : [String] = ["$400", "$300", "$400"]
    
    // MARK:- Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        myEarningsTableView.delegate = self
        myEarningsTableView.dataSource = self
        myEarningsTableView.tableFooterView = UIView()
        self.updateTableHeight(tableName: myEarningsTableView, tableHeight: tableViewHeight)
        self.addNavigationBar(left: .None, titleType: .Normal, title: "My Earnings", titlePosition: .Middle, right: .notification, rightButtonIconOrTitle1: "notification(1) 1", rightButtonIconOrTitle2: "", bgColor: .Default, barTintColor: .black, navigationBarStyle: .default) {
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    // MARK:- Actions
    
    @IBAction func withdrawMoneyPressed(_ sender: GradientButton) {
        let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "WithdrawlMoneyViewController") as! WithdrawlMoneyViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

   // MARK:- UITableViewDelegate, UITableViewDataSource

extension MyEarningsViewController: UITableViewDelegate, UITableViewDataSource{
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  print("")
    }


func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return fullname.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyEarningsTableViewCell
    
    cell.nameLabel.text = self.fullname[indexPath.row]
    cell.userDetail.text = self.details[indexPath.row]
    cell.dateLabel.text = self.date[indexPath.row]
    cell.cashLabel.text = self.cash[indexPath.row]
    cell.selectionStyle = UITableViewCell.SelectionStyle.none
    return cell
}

}

