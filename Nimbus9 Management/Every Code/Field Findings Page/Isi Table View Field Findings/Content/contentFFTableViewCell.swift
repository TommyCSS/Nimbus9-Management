//
//  contentFFTableViewCell.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 25/05/22.
//

import UIKit

class contentFFTableViewCell: UITableViewCell {
    
    @IBOutlet weak var viewIncoming: UIView!
    @IBOutlet weak var viewOutcoming: UIView!
    @IBOutlet weak var categoryFFCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewIncoming.layer.cornerRadius = 10
        viewOutcoming.layer.cornerRadius = 10
        
        Functions().shadowUIView(cview: viewIncoming)
        Functions().shadowUIView(cview: viewOutcoming)
        
        regisCollect()
    }
    
    func regisCollect(){
        categoryFFCollectionView.backgroundColor = UIColor(white: 1, alpha: 0)
        let nibCell = UINib(nibName: "contentFFCollectionViewCell", bundle: nil)
        categoryFFCollectionView.register(nibCell, forCellWithReuseIdentifier: "contentFFCollectionViewCell")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBAction func didTapViewIncoming(_ sender: Any) {
        print("View Incoming Tapped")
    }
}

extension contentFFTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return departmentList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "contentFFCollectionViewCell", for: indexPath) as! contentFFCollectionViewCell
        cell.setup(with: departmentList[indexPath.row])
        cell.shadowDecorate(radius: 10)
        return cell
    }
    
    
}
