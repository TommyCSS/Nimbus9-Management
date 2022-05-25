//
//  departemenCollectionViewCell.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 20/05/22.
//

import UIKit

class departemenCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgDepartemen: UIImageView!
    @IBOutlet weak var lblDepartemen: UILabel!
    
    @IBOutlet weak var lblOfficers: UILabel!
    @IBOutlet weak var lblLocations: UILabel!
    @IBOutlet weak var lblShift: UILabel!
    @IBOutlet weak var lblItems: UILabel!

    func setup(with departemen:ListDepartemen) {
        imgDepartemen.image = departemen.image
        lblDepartemen.text = departemen.namaDepartemen
        
        lblOfficers.text = "00 Officer"
        lblLocations.text = "00 Location"
        lblShift.text = "00 Shift"
        lblItems.text = "00 Item"
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
