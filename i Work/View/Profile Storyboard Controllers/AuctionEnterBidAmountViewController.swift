//
//  AuctionEnterBidAmountViewController.swift
//  i Work
//
//  Created by promatics on 05/04/21.
//

import Foundation
import UIKit

class AuctionEnterBidAmountViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func crossButtonPressed(_ sender: UIButton) {
        let sb1 = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
        let vc1 = sb1.instantiateViewController(identifier: "JobDetailsAuctionViewController") as! JobDetailsAuctionViewController
        self.navigationController?.pushViewController(vc1, animated: true)
    }
    
}
