//
//  ChatViewController.swift
//  i Work
//
//  Created by promatics on 02/04/21.
//

import Foundation
import UIKit

class ChatRequestViewController: UIViewController {
    
    // MARK:- Outlet

    @IBOutlet weak var tableView: UITableView!
    
    // MARK:- Variables
    var images : [String] = ["blank-profile-picture-973460_640.png", "blank-profile-picture-973460_640.png", "blank-profile-picture-973460_640.png"]
    var fullname : [String] = ["Jane Doe", "Peter Parker", "Emily Rose"]
    var details : [String] = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit"]
    var time : [String] = ["8:39pm", "8:39pm", "8:39pm"]
    
    // MARK:- Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }
    
    // MARK:- Actions
    
    @IBAction func arrowPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "NewChatRequestViewController") as! NewChatRequestViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


// MARK:- UITableViewDelegate, UITableViewDataSource

extension ChatRequestViewController: UITableViewDelegate, UITableViewDataSource{
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ChatRequestTableViewCell
    let cellImages = UIImage(named: images[indexPath.row])
    cell.profileImage.image = cellImages
    cell.fullName.text = self.fullname[indexPath.row]
    cell.userDetail.text = self.details[indexPath.row]
    cell.timeLable.text = self.time[indexPath.row]
    cell.selectionStyle = UITableViewCell.SelectionStyle.none
    return cell
}

}

