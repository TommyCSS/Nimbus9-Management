//
//  loginCompany2ViewController.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 20/05/22.
//

import UIKit

class loginCompany2ViewController: UIViewController {
    
    @IBOutlet weak var bgLoginCompany2:UIImageView!
    @IBOutlet weak var imgLogoCompany2:UIImageView!
    
    @IBOutlet weak var clientPasswordTxt: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Functions().setupInitialLoginCompanyImage(bgImg: bgLoginCompany2,
                                                     imgLogo: imgLogoCompany2)
    }
    
    @IBAction func didTapSecure(_ sender: Any) {
        Functions().securedField(textField: clientPasswordTxt)
    }
    
    @IBAction func didTapSignIn(_ sender: Any) {
        self.performSegue(withIdentifier: "toLoginUser", sender: nil)
    }
    
    
    
    //untuk kembali ke view login company 2
    @IBAction func unwindToLoginCompany2( _ seg: UIStoryboardSegue) {}
}
