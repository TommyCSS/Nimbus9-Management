//
//  loginUserViewController.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 20/05/22.
//

import UIKit

class loginUserViewController: UIViewController {
    
    @IBOutlet weak var bgViewThemeColor: UIView!
    @IBOutlet weak var logoCompany: UIImageView!
    @IBOutlet weak var passwordUserTxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Functions().setupInitialLoginUserTheme(logoCompany: logoCompany, linkLogo: "Logo_Company",
                                                  bgView: bgViewThemeColor, bgThemeHexColor: "#105767")
        

    }
    
    @IBAction func didTapSecure(_ sender: Any) {
        Functions().securedField(textField: passwordUserTxt)
    }
    
    
    @IBAction func didTapForgotPassword(_ sender: Any) {
    }
    
    @IBAction func didTapSignIn(_ sender: Any) {
        self.performSegue(withIdentifier: "toMainMenu", sender: nil)
    }
    
    
    //untuk kembali ke view login user
    @IBAction func unwindToLoginUser( _ seg: UIStoryboardSegue) {}

}
