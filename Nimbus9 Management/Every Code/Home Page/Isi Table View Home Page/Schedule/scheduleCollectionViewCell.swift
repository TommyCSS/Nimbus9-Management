//
//  scheduleCollectionViewCell.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 23/05/22.
//

import UIKit

class scheduleCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override var isSelected: Bool{
        didSet {
            if isSelected{
                selected()
            } else{
                unselected()
            }
        }
    }
    
    func setup(with scheduleList:ListScheduleCollection) {
        label.text = scheduleList.namaDepartemen
    }
    
    func selected(){
        self.view.backgroundColor = UIColor(hexString: "#0599FF")
        self.label.textColor = UIColor(hexString: "#FFFFFF")
    }
    
    func unselected(){
        self.view.backgroundColor = UIColor(hexString: "#F4F4F4")
        self.label.textColor = UIColor(hexString: "#919AAB")
    }

}
