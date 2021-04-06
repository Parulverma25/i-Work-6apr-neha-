//
//  JobDetailsTableViewCell.swift
//  i Work
//
//  Created by promatics on 03/04/21.
//

import UIKit

class JobDetailsAuctionTableViewCell: UITableViewCell {

    @IBOutlet weak var clientName: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
