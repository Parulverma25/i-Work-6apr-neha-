//
//  RatingsAndReviewsTableViewCell.swift
//  i Work
//
//  Created by promatics on 03/04/21.
//

import UIKit

class RatingsAndReviewsTableViewCell: UITableViewCell {
   
    @IBOutlet weak var profileImageView: SetImage!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var reviewLabel: UILabel!
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
