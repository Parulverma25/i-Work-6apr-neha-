//
//  MyBookingsTableViewCell.swift
//  i Work
//
//  Created by promatics on 03/04/21.
//

import UIKit

class MyBookingsTableViewCell: UITableViewCell {

   
    @IBOutlet weak var profileImage: SetImage!
    @IBOutlet weak var serviceLabel: UILabel!
    @IBOutlet weak var dateAndTimeLabel: UILabel!
    @IBOutlet weak var serviceButton: SetButton!
    @IBOutlet weak var serviceDetails: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
