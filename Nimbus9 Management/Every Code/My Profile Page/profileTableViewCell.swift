//
//  profileTableViewCell.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 25/05/22.
//

import UIKit

class profileTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func didTapProfilePicture(_ sender: Any) {
        print("Profile Picture Tapped")
    }
    
    @IBAction func didTapEmail(_ sender: Any) {
        print("Email Tapped")
    }
    @IBAction func didTapPhone(_ sender: Any) {
        print("Phone Tapped")
    }
    @IBAction func didTapPassword(_ sender: Any) {
        print("Password Tapped")
    }
    @IBAction func didTapLanguage(_ sender: Any) {
        print("Language Tapped")
    }

    
    
}
