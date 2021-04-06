//
//  RegisterViewController.swift
//  i Work
//
//  Created by promatics on 31/03/21.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = storyboard.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(vc1, animated: true)
    }
}
