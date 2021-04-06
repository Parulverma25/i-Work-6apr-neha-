//
//  RatingsAndReviewsViewController.swift
//  i Work
//
//  Created by promatics on 02/04/21.
//

import Foundation
import UIKit

class RatingsAndReviewsViewController: UIViewController {

    // MARK:- Outlet
    
    @IBOutlet weak var ratingAndReviewTableView: UITableView!
    
    // MARK:- Variables
    
    var images : [String] = ["blank-profile-picture-973460_640.png", "blank-profile-picture-973460_640.png", "blank-profile-picture-973460_640.png"]
    var fullname : [String] = ["Jane Doe", "Alen Parker", "Emily Rose"]
    var review : [String] = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit"]
    var date : [String] = ["Apr 2, 2021", "Apr 2, 2021", "Apr 2, 2021"]
    var star : [String] = ["star 1.png", "star 1.png", "star 1.png"]
    var rating : [String] = ["4.5", "4", "3.5"]
    // MARK:- Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        ratingAndReviewTableView.delegate = self
        ratingAndReviewTableView.dataSource = self
        ratingAndReviewTableView.tableFooterView = UIView()
    }
    
}

// MARK:- UITableViewDelegate, UITableViewDataSource

extension RatingsAndReviewsViewController: UITableViewDelegate, UITableViewDataSource{
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RatingsAndReviewsTableViewCell
    let cellImages = UIImage(named: images[indexPath.row])
    cell.profileImageView.image = cellImages
    cell.fullNameLabel.text = self.fullname[indexPath.row]
    cell.reviewLabel.text = self.review[indexPath.row]
    cell.dateLabel.text = self.date[indexPath.row]
    let cellImages1 = UIImage(named: star[indexPath.row])
    cell.starImageView.image = cellImages1
    cell.ratingLabel.text = self.rating[indexPath.row]
    cell.selectionStyle = UITableViewCell.SelectionStyle.none
    return cell
}

}

