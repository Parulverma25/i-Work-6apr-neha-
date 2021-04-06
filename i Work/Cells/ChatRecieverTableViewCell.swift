//
//  ChatRecieverTableViewCell.swift
//  i Work
//
//  Created by promatics on 02/04/21.
//

import UIKit

class ChatRecieverTableViewCell: UITableViewCell {

    @IBOutlet weak var recieverMessage: UILabel!
    @IBOutlet weak var recieverTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
