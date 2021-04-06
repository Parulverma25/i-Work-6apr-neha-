//
//  JobDetailsViewController.swift
//  i Work
//
//  Created by promatics on 03/04/21.
//

import Foundation
import UIKit

class JobDetailsAuctionViewController: UIViewController {
    
    // MARK:- Outlets
    
    @IBOutlet weak var jobDetailsTableView: UITableView!
    @IBOutlet weak var jobDetailsTableViewHeight: NSLayoutConstraint!
    
    // MARK:- Variables
    
    var clientName : [String] = ["Jane Doe", "Alen Parker", "Emily Rose"]
    var location : [String] = ["2km away", "2km away", "2km away"]
    var date : [String] = ["Apr 2, 2021", "Apr 2, 2021", "Apr 2, 2021"]
    var price : [String] = ["$145", "$145", "$145"]
    
    // MARK:- Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jobDetailsTableView.delegate = self
        jobDetailsTableView.dataSource = self
        jobDetailsTableView.tableFooterView = UIView()
        self.updateTableHeight(tableName: jobDetailsTableView, tableHeight: jobDetailsTableViewHeight)
    }
    
    // MARK:- Actions
    
    @IBAction func takePartInAuctionPressed(_ sender: SetButton) {
        let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "AuctionEnterBidAmountViewController") as! AuctionEnterBidAmountViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK:- UITableViewDelegate, UITableViewDataSource

extension JobDetailsAuctionViewController: UITableViewDelegate, UITableViewDataSource{

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("")
    }


func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return clientName.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! JobDetailsAuctionTableViewCell
    
    cell.clientName.text = self.clientName[indexPath.row]
    cell.location.text = self.location[indexPath.row]
    cell.dateLabel.text = self.date[indexPath.row]
    cell.priceLabel.text = self.price[indexPath.row]
    cell.selectionStyle = UITableViewCell.SelectionStyle.none
    return cell
}

}

