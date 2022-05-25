//
//  ViewController.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 19/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.performSegue(withIdentifier: "toLoginCompany", sender: nil)
    }


}

