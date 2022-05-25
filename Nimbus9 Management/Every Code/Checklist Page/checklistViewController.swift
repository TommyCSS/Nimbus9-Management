//
//  checklistViewController.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 20/05/22.
//

import UIKit

class checklistViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    @IBOutlet weak var modulBtn: UIButton!
    @IBOutlet weak var shiftBtn: UIButton!
    @IBOutlet weak var dateBtn: UIButton!
    @IBOutlet weak var continueBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //disable button
        Functions().disableUIButton(cButton: shiftBtn)
        Functions().disableUIButton(cButton: dateBtn)
        Functions().disableUIButton(cButton: continueBtn)
        
        //persiapan nerima text dari modul
        NotificationCenter.default.addObserver(self, selector: #selector(didGetModulNotification(_:)), name: Notification.Name("modul"), object: nil)
        
        //NotificationCenter.default.addObserver(self, selector: #selector(didGetShiftNotification(_:)), name: Notification.Name("shift"), object: nil)
        
    }
    
    //buat ngubah text di button modul setelah modul dipilih then nyalain button shift
    @objc func didGetModulNotification(_ notification: Notification){
        let text = notification.object as! String?
        
        modulBtn.setTitle(text, for: .normal)
        modulBtn.titleLabel?.font = UIFont.systemFont(ofSize: 10, weight: .bold)
        
        shiftBtn.isEnabled = true
        shiftBtn.setTitle("Select Shift", for: .normal)
        shiftBtn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .light)
        
        dateBtn.isEnabled = false
        dateBtn.setTitle("Select Date", for: .disabled)
        dateBtn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .light)
        
        NotificationCenter.default.removeObserver(self, name: Notification.Name("modul"), object: nil)
    }
    @IBAction func didTapSelectModul(_ sender: Any) {
        let sb = UIStoryboard(name: "modulSelectStoryboard", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "modulSelectViewController")
        vc.modalPresentationStyle = .custom
        vc.transitioningDelegate = self
        self.present(vc, animated: true)
    }
    
    
    @IBAction func didTapSelectShift(_ sender: Any) {
    }
    
    @IBAction func didTapSelectDate(_ sender: Any) {
    }
    
    @IBAction func didTapContinue(_ sender: Any) {
    }
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return HalfSizePresentationController(presentedViewController: presented, presenting: presentingViewController)
    }
    
}
