//
//  ProviderProfileViewController.swift
//  i Work
//
//  Created by promatics on 05/04/21.
//

import Foundation
import UIKit

class ProviderProfileViewController: UIViewController {

    //MARK:- IBOutlets
    
    //MARK:- Variables
    
    //MARK:- Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    //MARK:- Custom Functions
    
    //MARK:- OBJC Methods
    
    //MARK:- IBActions
    @IBAction func messageBtnPressed(_ sender: GradientButton) {
        let storyboard = UIStoryboard(name: "Jobs", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ProviderProfileChatPopUpViewController") as! ProviderProfileChatPopUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func videoCallBtnPressed(_ sender: GradientButton) {
    }
    
    @IBAction func acceptPressed(_ sender: GradientButton) {
        let storyboard = UIStoryboard(name: "Jobs", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "JobRequestViewController") as! JobRequestViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func rejectPressed(_ sender: GradientButton) {
        let storyboard = UIStoryboard(name: "Jobs", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "RateProviderViewController") as! RateProviderViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
