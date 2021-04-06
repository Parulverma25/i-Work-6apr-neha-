//
//  NewChatRequestTableViewCell.swift
//  i Work
//
//  Created by promatics on 02/04/21.
//

import UIKit

class NewChatRequestTableViewCell: UITableViewCell {

    @IBOutlet weak var profileimages: SetImage!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var fullNameUser: UILabel!
    @IBOutlet weak var userDetails: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
