//
//  MyAuctionProviderListViewController.swift
//  i Work
//
//  Created by promatics on 06/04/21.
//

import Foundation
import UIKit

class MyAuctionProviderListViewController: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var myAuctionTableView: UITableView!
    
    //MARK:- Variables
    var images : [String] = ["blank-profile-picture-973460_640.png", "blank-profile-picture-973460_640.png", "blank-profile-picture-973460_640.png"]
    var fullname : [String] = ["Jane Doe", "John Doe", "Emily Rose"]
    var gender: [String] = ["Gender: Female", "Gender: Male", "Gender: Female"]
    var details : [String] = ["Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit ", "Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit"]
    var distance : [String] = ["Distance: 3km", "Distance: 3km", "Distance: 3km"]
    var cash : [String] = ["$400", "$300", "$400"]
    
    //MARK:- Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        myAuctionTableView.delegate = self
        myAuctionTableView.dataSource = self
        myAuctionTableView.tableFooterView = UIView()
    }
    
    //MARK:- Custom Functions
    
    //MARK:- OBJC Methods
    
    //MARK:- IBActions
}

// MARK:- UITableViewDelegate, UITableViewDataSource

extension MyAuctionProviderListViewController: UITableViewDelegate, UITableViewDataSource{
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  print("")
    }


func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return images.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyAuctionProviderListTableViewCell
    let cellImages = UIImage(named: images[indexPath.row])
    cell.userImage.image = cellImages
    cell.userFullName.text = self.fullname[indexPath.row]
    cell.descriptionLbl.text = self.details[indexPath.row]
    cell.genderLbl.text = self.gender[indexPath.row]
    cell.distanceLbl.text = self.distance[indexPath.row]
    cell.bidPrice.text = self.cash[indexPath.row]
    
    cell.selectionStyle = UITableViewCell.SelectionStyle.none
    return cell
}

}

