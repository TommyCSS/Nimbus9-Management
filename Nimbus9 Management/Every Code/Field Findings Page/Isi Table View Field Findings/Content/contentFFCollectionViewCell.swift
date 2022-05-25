//
//  contentFFCollectionViewCell.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 25/05/22.
//

import UIKit

class contentFFCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var collectionImg: UIImageView!
    @IBOutlet weak var collectionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func setup(with departemen:ListDepartemen) {
        collectionImg.image = departemen.image
        collectionLbl.text = departemen.namaDepartemen
    }
    
    @IBAction func didTapViewCategory(_ sender: Any) {
        print("View Category Tapped")
    }
    
}
