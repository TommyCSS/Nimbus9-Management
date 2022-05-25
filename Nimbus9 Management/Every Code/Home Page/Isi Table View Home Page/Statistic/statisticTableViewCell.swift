//
//  statisticTableViewCell.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 23/05/22.
//

import UIKit

class statisticTableViewCell: UITableViewCell {

    @IBOutlet weak var securityPercentageLbl: UILabel!
    @IBOutlet weak var securityProgBar: UIProgressView!
    
    @IBOutlet weak var cleaningPercentageLbl: UILabel!
    @IBOutlet weak var cleaningProgBar: UIProgressView!
    
    @IBOutlet weak var engineeringPercentageLbl: UILabel!
    @IBOutlet weak var engineeringProgBar: UIProgressView!
    
    @IBOutlet weak var pestControlPercentageLbl: UILabel!
    @IBOutlet weak var pestControlProgBar: UIProgressView!
    
    @IBOutlet weak var HSEPercentageLbl: UILabel!
    @IBOutlet weak var HSEProgBar: UIProgressView!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
