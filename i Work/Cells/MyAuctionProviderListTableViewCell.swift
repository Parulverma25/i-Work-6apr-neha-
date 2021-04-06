//
//  MyAuctionProviderListTableViewCell.swift
//  i Work
//
//  Created by promatics on 06/04/21.
//

import UIKit

class MyAuctionProviderListTableViewCell: UITableViewCell {

    @IBOutlet weak var bidPrice: UILabel!
    @IBOutlet weak var distanceLbl: UILabel!
    @IBOutlet weak var userImage: SetImage!
    @IBOutlet weak var userFullName: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
