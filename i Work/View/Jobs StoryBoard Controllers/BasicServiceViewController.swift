//
//  BasicServiceViewController.swift
//  i Work
//
//  Created by promatics on 4/5/21.
//

import UIKit

class BasicServiceViewController: UIViewController {

    //MARK:- IBOutlets
    
    @IBOutlet var noteLbl: UILabel!
    
    //MARK:- Variables
    
    //MARK:- Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boldParticularText()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    //MARK:- Custom Functions
    
    func boldParticularText(){
        let boldText = "Note: "
        let attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 17)]
        let attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

        let normalText = "As per basic service, your job will exist only for 24 hour if not accepted by any provider."
        let normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        self.noteLbl.attributedText = attributedString
    }
    
    //MARK:- OBJC Methods
    
    //MARK:- IBActions
   
}
