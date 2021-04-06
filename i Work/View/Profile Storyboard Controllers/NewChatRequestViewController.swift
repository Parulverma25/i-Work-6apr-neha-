//
//  NewChatRequestViewController.swift
//  i Work
//
//  Created by promatics on 02/04/21.
//

import Foundation
import UIKit

class NewChatRequestViewController: UIViewController {

    // MARK:- Outlet
    
    @IBOutlet weak var newRequestTableView: UITableView!
    
    // MARK:- Variables
    
    var images : [String] = ["blank-profile-picture-973460_640.png", "blank-profile-picture-973460_640.png", "blank-profile-picture-973460_640.png"]
    var fullname : [String] = ["Jane Doe", "Peter Parker", "Emily Rose"]
    var details : [String] = ["Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit"]
    var date : [String] = ["Apr 2, 2021", "Apr 2, 2021", "Apr 2, 2021"]
    
    // MARK:- Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        newRequestTableView.delegate = self
        newRequestTableView.dataSource = self
        newRequestTableView.tableFooterView = UIView()
    }
    
}

// MARK:- UITableViewDelegate, UITableViewDataSource

extension NewChatRequestViewController: UITableViewDelegate, UITableViewDataSource{
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewChatRequestTableViewCell
    let cellImages = UIImage(named: images[indexPath.row])
    cell.profileimages.image = cellImages
    cell.fullNameUser.text = self.fullname[indexPath.row]
    cell.userDetails.text = self.details[indexPath.row]
    cell.dateLabel.text = self.date[indexPath.row]
    cell.selectionStyle = UITableViewCell.SelectionStyle.none
    return cell
}

}

