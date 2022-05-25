//
//  fieldFindingsViewController.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 20/05/22.
//

import UIKit

class fieldFindingsViewController: UIViewController {

    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var ffTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Functions().shadowUIView(cview: titleView)
        
        regisTable()
    }
    
    func regisTable() {
        ffTableView.register(UINib.init(nibName: "contentFFTableViewCell", bundle: nil), forCellReuseIdentifier:"contentFFTableViewCell")
        
        
        ffTableView.estimatedRowHeight = 200
        ffTableView.rowHeight = UITableView.automaticDimension
        //tableView.setContentOffset(.zero, animated: false)
        ffTableView.separatorColor = UIColor.clear
        ffTableView.reloadData()
    }
    
    @IBAction func didTapNewFieldFindings(_ sender: Any) {
        print("New Field Finding Tapped")
    }
    

}


extension fieldFindingsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contentFFTableViewCell", for: indexPath) as! contentFFTableViewCell
        cell.selectionStyle = .none
        return cell
    }
    
}
