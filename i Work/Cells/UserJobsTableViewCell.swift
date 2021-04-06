//
//  UserJobsTableViewCell.swift
//  i Work
//
//  Created by promatics on 4/5/21.
//

import UIKit

class UserJobsTableViewCell: UITableViewCell {

    @IBOutlet var outerServiceView: SetView!
    @IBOutlet var dateLbl: UILabel!
    @IBOutlet var descriptionLbl: UILabel!
    @IBOutlet var usernameLbl: UILabel!
    @IBOutlet var serviceLbl: UILabel!
    @IBOutlet var profileImageView: SetImage!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
