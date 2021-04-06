//
//  ChatViewController.swift
//  i Work
//
//  Created by promatics on 02/04/21.
//

import Foundation
import UIKit

class ChatViewController: UIViewController {
    
    // MARK:- Outlet
    
    @IBOutlet weak var chatTableView: UITableView!
    
    // MARK:- Variables
    
    var message : [String] = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Gel Nail Paints", "Hi", "Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Gel Nail Paints"]
    var senderTime : [String] = ["07:14 pm", "07:14 pm", "07:14 pm", "07:14 pm", "07:14 pm", "07:14 pm"]
    // MARK:- Life Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        chatTableView.delegate = self
        chatTableView.dataSource = self
        chatTableView.tableFooterView = UIView()
    }
    
    @IBAction func sendBtnPressed(_ sender: GradientButton) {
        let storyboard = UIStoryboard(name: "ProfileStoryBoard", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ChatRequestViewController") as! ChatRequestViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK:- UITableViewDelegate, UITableViewDataSource

extension  ChatViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("")
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return senderTime.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "recieverText", for: indexPath) as! ChatRecieverTableViewCell
            cell.recieverMessage.text = self.message[indexPath.row]
            cell.recieverTime.text = self.senderTime[indexPath.row]
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }else if indexPath.row % 2 == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "senderText", for: indexPath) as! ChatSenderTableViewCell
            cell.senderMessage.text = self.message[indexPath.row]
            cell.senderTime.text = self.senderTime[indexPath.row]
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        }
        return UITableViewCell()
    }
}

