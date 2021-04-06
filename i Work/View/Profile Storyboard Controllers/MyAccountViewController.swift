//
//  MyAccountViewController.swift
//  i Work
//
//  Created by promatics on 01/04/21.
//

import Foundation
import UIKit

class MyAccountViewController: UIViewController{
    
    // MARK:- Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK:- Variables
    
    var titles : [String] = ["My Profile","My Service Menu", "My Chat", "Switch Profile", "My Bookings", "Ratings and Reviews", "Terms and Conditions", "Privacy Policy", "About Us", "Help", "Contact Us", "Logout"]
    
    var images : [String] = ["user(2) 1", "vehicle 1", "messenger 1", "switch 1", "calendar 1", "review 1", "terms-and-conditions 1", "privacy-policy 1", "file 1", "question 1", "email 2", "logout 1"]
    
    
    // MARK:- Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
       
        tableView.delegate = self
        tableView.dataSource = self
        self.addNavigationBar(left: .None, titleType: .Xlarge, title: "My Account", titlePosition: .Middle, right: .notification, rightButtonIconOrTitle1: "", rightButtonIconOrTitle2: "", bgColor: .Default, barTintColor: .black, navigationBarStyle: .default) {
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
}

    // MARK:- UITableViewDelegate, UITableViewDataSource

extension MyAccountViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0 :
            let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "MyProfileViewController") as! MyProfileViewController
            self.navigationController?.pushViewController(vc, animated: true)
        case 1 :
            let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
            let vc1 = storyboard.instantiateViewController(identifier: "MyMenuServiceViewController") as! MyMenuServiceViewController
            self.navigationController?.pushViewController(vc1, animated: true)
        case 2 :
            let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
            let vc2 = storyboard.instantiateViewController(identifier: "ChatViewController") as! ChatViewController
            self.navigationController?.pushViewController(vc2, animated: true)
        case 3 :
//            let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
//            let vc3 = storyboard.instantiateViewController(identifier: "BecomeAClientViewController") as! BecomeAClientViewController
//            self.navigationController?.pushViewController(vc3, animated: true)
//            
            let vc3 = appStoryBoards.jobs.getStoryBoard().instantiateViewController(identifier: "UserTabBarViewController") as! UserTabBarViewController
            self.tabBarController?.tabBar.isHidden = true
            self.navigationController?.pushViewController(vc3, animated: true)
        case 4 :
            let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
            let vc4 = storyboard.instantiateViewController(identifier: "ViewCalendarViewController") as! ViewCalendarViewController
            self.navigationController?.pushViewController(vc4, animated: true)
        case 5 :
            let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
            let vc5 = storyboard.instantiateViewController(identifier: "RatingsAndReviewsViewController") as! RatingsAndReviewsViewController
            self.navigationController?.pushViewController(vc5, animated: true)
        case 6 :
            let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
            let vc6 = storyboard.instantiateViewController(identifier: "TermsAndConditionsViewController") as! TermsAndConditionsViewController
            self.navigationController?.pushViewController(vc6, animated: true)
        case 7 :
            let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
            let vc7 = storyboard.instantiateViewController(identifier: "PrivacyPolicyViewController") as! PrivacyPolicyViewController
            self.navigationController?.pushViewController(vc7, animated: true)
        case 8 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc8 = storyboard.instantiateViewController(identifier: "AboutUsViewController") as! AboutUsViewController
            self.navigationController?.pushViewController(vc8, animated: true)
        case 9 :
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc9 = storyboard.instantiateViewController(identifier: "HelpViewController") as! HelpViewController
            self.navigationController?.pushViewController(vc9, animated: true)
        case 10 :
            let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
            let vc10 = storyboard.instantiateViewController(identifier: "ContactUsViewController") as! ContactUsViewController
            self.navigationController?.pushViewController(vc10, animated: true)
        case 11 :
            let storyboard = UIStoryboard(name: "Jobs", bundle: nil)
            let vc11 = storyboard.instantiateViewController(identifier: "MyAuctionProviderListViewController") as! MyAuctionProviderListViewController
            self.navigationController?.pushViewController(vc11, animated: true)
        default:
            print("")
        }
    }
}

extension MyAccountViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyAccountTableViewCell
        let cellImages = UIImage(named: images[indexPath.row])
        cell.imageCell.image = cellImages
        cell.titleLabel.text = self.titles[indexPath.row]
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell
    }
    
    
}
