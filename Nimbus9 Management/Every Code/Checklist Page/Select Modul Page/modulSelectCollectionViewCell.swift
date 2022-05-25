//
//  modulSelectCollectionViewCell.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 24/05/22.
//

import UIKit

class modulSelectCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var modulImg: UIImageView!
    @IBOutlet weak var modulLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(with departemen: ListDepartemen){
        modulImg.image = departemen.image
        modulLbl.text = departemen.namaDepartemen
    }

}
