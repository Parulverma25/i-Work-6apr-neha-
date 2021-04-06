//
//  JobRequestViewController.swift
//  i Work
//
//  Created by promatics on 06/04/21.
//

import Foundation
import UIKit

class JobRequestViewController: UIViewController {

    //MARK:- IBOutlets
    @IBOutlet weak var jobRequestTableView: UITableView!
    
    //MARK:- Variables
    
    var username : [String] = ["jane_doe", "john_parker", "emily_rose"]
    var gender: [String] = ["Gender: Female", "Gender: Male", "Gender: Female"]
    var details : [String] = ["Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit ", "Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit"]
    var distance : [String] = ["Distance: 3km", "Distance: 3km", "Distance: 3km"]
    var cash : [String] = ["$400", "$300", "$400"]
    
    //MARK:- Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jobRequestTableView.delegate = self
        jobRequestTableView.dataSource = self
        jobRequestTableView.tableFooterView = UIView()
    }
    
    //MARK:- Custom Functions
    
    //MARK:- OBJC Methods
    
    //MARK:- IBActions
   
}

// MARK:- UITableViewDelegate, UITableViewDataSource

extension JobRequestViewController: UITableViewDelegate, UITableViewDataSource{
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  print("")
    }


func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return username.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! JobRequestTableViewCell
   
    cell.usernameLbl.text = self.username[indexPath.row]
    cell.descriptionLbl.text = self.details[indexPath.row]
    cell.genderLbl.text = self.gender[indexPath.row]
    cell.distanceLbl.text = self.distance[indexPath.row]
    cell.cashLbl.text = self.cash[indexPath.row]
    cell.selectionStyle = UITableViewCell.SelectionStyle.none
    return cell
}

}

