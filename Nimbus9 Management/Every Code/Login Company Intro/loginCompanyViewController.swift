//
//  loginCompanyViewController.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 19/05/22.
//

import UIKit

class loginCompanyViewController: UIViewController {

    @IBOutlet weak var bgLoginCompany: UIImageView!
    @IBOutlet weak var imgLogoCompany: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Functions().setupInitialLoginCompanyImage(bgImg: bgLoginCompany,
                                                     imgLogo: imgLogoCompany)
    }
    
    //ketika button getstarted di tap
    @IBAction func didTapGetStarted(_ sender: Any) {
        self.performSegue(withIdentifier: "toLoginCompany2", sender: nil)
    }
    
    
    //untuk kembali ke view login company intro
    @IBAction func unwindToLoginCompanyIntro( _ seg: UIStoryboardSegue) {}
}

