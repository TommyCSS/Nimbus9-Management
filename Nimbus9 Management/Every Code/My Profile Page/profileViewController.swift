//
//  profileViewController.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 20/05/22.
//

import UIKit

class profileViewController: UIViewController {

    @IBOutlet weak var profileTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        regisTable()
        
    }
    
    func regisTable(){
        profileTableView.register(UINib.init(nibName: "profileTableViewCell", bundle: nil), forCellReuseIdentifier:"profileTableViewCell")
        
        profileTableView.estimatedRowHeight = 200
        profileTableView.rowHeight = UITableView.automaticDimension
        //tableView.setContentOffset(.zero, animated: false)
        profileTableView.separatorColor = UIColor.clear
        profileTableView.reloadData()
    }

}

extension profileViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileTableViewCell", for: indexPath) as! profileTableViewCell
        return cell
    }
    
    
}
