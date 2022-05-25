//
//  tenantInquiryTableViewCell.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 23/05/22.
//

import UIKit

class tenantInquiryTableViewCell: UITableViewCell {


    @IBOutlet weak var doneLbl: UILabel!
    @IBOutlet weak var doneProgess: UIProgressView!
    
    @IBOutlet weak var inProgressLbl: UILabel!
    @IBOutlet weak var inProgressProgress: UIProgressView!
    
    @IBOutlet weak var CanceledLbl: UILabel!
    @IBOutlet weak var CanceledProgress: UIProgressView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func didTapViewAllTenantInquiry(_ sender: Any) {
        print("Tenants Inquiry View All Tapped")
    }
    
    
}
