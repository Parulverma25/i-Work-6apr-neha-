//
//  ChatTableViewCell.swift
//  i Work
//
//  Created by promatics on 02/04/21.
//

import UIKit

class ChatRequestTableViewCell: UITableViewCell {
    
    // MARK:- Outlet
    
    @IBOutlet weak var profileImage: SetImage!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var userDetail: UILabel!
    @IBOutlet weak var timeLable: UILabel!
    
    // MARK:- Life Cycle Functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
