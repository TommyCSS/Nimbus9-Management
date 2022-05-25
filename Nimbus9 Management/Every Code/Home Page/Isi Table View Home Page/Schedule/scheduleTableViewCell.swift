//
//  scheduleTableViewCell.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 23/05/22.
//

import UIKit

class scheduleTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var scheduleCollectionView: UICollectionView!
    
    @IBOutlet var labelJam: Array<UILabel>?
    @IBOutlet var labelShift: Array<UILabel>?
    @IBOutlet var labelNama: Array<UILabel>?
    @IBOutlet var labelKanan: Array<UILabel>?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        scheduleCollectionView.backgroundColor = UIColor(white: 1, alpha: 0)
        let nibCell = UINib(nibName: "scheduleCollectionViewCell", bundle: nil)
        scheduleCollectionView.register(nibCell, forCellWithReuseIdentifier: "scheduleCollectionViewCell")
        
        let indexP = IndexPath(row: 0, section: 0)
        scheduleCollectionView.selectItem(at: indexP, animated: false, scrollPosition: .left)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func didTapViewAllSchedule(_ sender: Any) {
        print("View All Schedule Tapped")
    }
    
    
}


extension scheduleTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate{

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
        print("Schedule of index \(indexPath.row) is Selected")
    }
    
    
}
