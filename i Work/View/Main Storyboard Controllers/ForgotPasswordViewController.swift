//
//  ForgotPasswordViewController.swift
//  i Work
//
//  Created by promatics on 31/03/21.
//

import Foundation
import UIKit

class ForgotPasswordViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        setNavBar()
    }
    
    //MARK:- Custom Methods
    
    func setNavBar(){
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "next(1)"), for: .normal)
        button.addTarget(self, action: #selector(didTapBack), for: .touchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        self.navigationController?.navigationBar.tintColor = .clear
        navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    //MARK:- Objc Methods
    
    @objc func didTapBack(sender:UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func getOtpPressed(_ sender: GradientButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = storyboard.instantiateViewController(identifier: "EnterOTPViewController") as! EnterOTPViewController
        self.navigationController?.pushViewController(vc1, animated: true)
    }
}
