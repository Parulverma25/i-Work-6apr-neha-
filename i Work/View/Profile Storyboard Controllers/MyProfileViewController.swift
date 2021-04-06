//
//  MyProfileViewController.swift
//  i Work
//
//  Created by promatics on 01/04/21.
//

import Foundation
import UIKit

class MyProfileViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
    }
    @IBAction func editProfilePressed(_ sender: GradientButton) {
        let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
        let vc1 = storyboard.instantiateViewController(identifier: "EditProfileViewController") as! EditProfileViewController
        self.navigationController?.pushViewController(vc1, animated: true)
    }
}
