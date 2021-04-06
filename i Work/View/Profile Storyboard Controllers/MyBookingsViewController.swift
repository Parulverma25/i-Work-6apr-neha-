//
//  MyBookingsViewController.swift
//  i Work
//
//  Created by promatics on 03/04/21.
//

import Foundation
import UIKit

class MyBookingsViewController: UIViewController {
    
    // MARK:- Outlets

    @IBOutlet weak var weeklyScheduleTableView: UITableView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    // MARK:- Variables
    
    var images : [String] = ["blank-profile-picture-973460_640.png", "blank-profile-picture-973460_640.png", "blank-profile-picture-973460_640.png"]
    var service : [String] = ["Civil Site Engineer", "Civil Site Engineer", "Civil Site Engineer"]
    var details : [String] = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit ", "Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit"]
    var date : [String] = ["Jan 22, 2021  08:30pm", "Jan 22, 2021  08:30pm", "Jan 22, 2021  08:30pm"]
   
    
    // MARK:- Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weeklyScheduleTableView.delegate = self
        weeklyScheduleTableView.dataSource = self
        weeklyScheduleTableView.tableFooterView = UIView()
        self.addNavigationBar(left: .None, titleType: .Normal, title: "My Bookings", titlePosition: .Middle, right: .notification, rightButtonIconOrTitle1: "notification(1) 1", rightButtonIconOrTitle2: "", bgColor: .Default, barTintColor: .black, navigationBarStyle: .default) {
        }
        if #available(iOS 14, *){
            datePicker.preferredDatePickerStyle = .inline
        }
        else{
            datePicker.preferredDatePickerStyle = .compact
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
}

// MARK:- UITableViewDelegate, UITableViewDataSource

extension MyBookingsViewController: UITableViewDelegate, UITableViewDataSource{
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyBookingsTableViewCell
    let cellImages = UIImage(named: images[indexPath.row])
    cell.profileImage.image = cellImages
    cell.serviceLabel.text = self.service[indexPath.row]
    cell.serviceDetails.text = self.details[indexPath.row]
    cell.dateAndTimeLabel.text = self.date[indexPath.row]
    
    cell.selectionStyle = UITableViewCell.SelectionStyle.none
    return cell
}

}

