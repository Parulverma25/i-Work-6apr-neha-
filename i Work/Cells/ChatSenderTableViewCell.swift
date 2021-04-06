//
//  ChatSenderTableViewCell.swift
//  i Work
//
//  Created by promatics on 02/04/21.
//

import UIKit

class ChatSenderTableViewCell: UITableViewCell {
  
    @IBOutlet weak var senderMessage: UILabel!
    @IBOutlet weak var senderTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
