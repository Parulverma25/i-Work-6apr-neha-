//
//  MyEarningsTableViewCell.swift
//  i Work
//
//  Created by promatics on 03/04/21.
//

import UIKit

class MyEarningsTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userDetail: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var cashLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
