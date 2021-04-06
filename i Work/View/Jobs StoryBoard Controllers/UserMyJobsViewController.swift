//
//  UserMyJobsViewController.swift
//  i Work
//
//  Created by promatics on 4/5/21.
//

import UIKit

class UserMyJobsViewController: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet var jobsTableView: UITableView!
    
    //MARK:- Variables
    
    //MARK:- Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jobsTableView.delegate = self
        jobsTableView.dataSource = self
    }
    
    //MARK:- Custom Functions
    
    //MARK:- OBJC Methods
    
    //MARK:- IBActions


}

//MARK:- TableView Delegates

extension UserMyJobsViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.jobsTableView.dequeueReusableCell(withIdentifier: "ongoing") as! UserJobsTableViewCell
        if indexPath.row == 0{
            cell.outerServiceView.BorderColor =  UIColor.green
            cell.serviceLbl.text = "Basic Service"
            cell.serviceLbl.textColor = .green
                //UIColor(named: "AppGreen") ?? UIColor.green
        }
        else{
            cell.outerServiceView.BorderColor = .red
                //UIColor(named: "AppRed") ?? UIColor.red
            cell.serviceLbl.text = "SOS Service"
            cell.serviceLbl.textColor = .red
                //UIColor(named: "AppRed") ?? UIColor.red
        }
        return cell
    }
    
    
}
