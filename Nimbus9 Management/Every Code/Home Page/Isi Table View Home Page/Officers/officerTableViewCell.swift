//
//  officerTableViewCell.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 23/05/22.
//

import UIKit

class officerTableViewCell: UITableViewCell {

    @IBOutlet weak var officerCollectionView: UICollectionView!
    @IBOutlet var imageList: Array<UIImageView>?
    @IBOutlet weak var exceedLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        officerCollectionView.backgroundColor = UIColor(white: 1, alpha: 0)
        let nibCell = UINib(nibName: "scheduleCollectionViewCell", bundle: nil)
        officerCollectionView.register(nibCell, forCellWithReuseIdentifier: "scheduleCollectionViewCell")
        
        let indexP = IndexPath(row: 0, section: 0)
        officerCollectionView.selectItem(at: indexP, animated: false, scrollPosition: .left)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension officerTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return scheduleList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "scheduleCollectionViewCell", for: indexPath) as! scheduleCollectionViewCell
        cell.setup(with: scheduleList[indexPath.row])
        cell.shadowDecorate(radius: 4)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Officers of index \(indexPath.row) is Selected")
    }
    
    
}
