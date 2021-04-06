//
//  ViewCalanderViewController.swift
//  i Work
//
//  Created by promatics on 03/04/21.
//

import Foundation
import UIKit

class ViewCalendarViewController: UIViewController {


    @IBOutlet weak var viewCalendar: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        
        if #available(iOS 14, *){
            viewCalendar.preferredDatePickerStyle = .inline
        }
        else{
            viewCalendar.preferredDatePickerStyle = .compact
        }
    }
    
}
