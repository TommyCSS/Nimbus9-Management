//
//  activityTableViewCell.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 23/05/22.
//

import UIKit

class activityTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func didTapViewAllActivity(_ sender: Any) {
        print("View All Activity Tapped")
    }
}
