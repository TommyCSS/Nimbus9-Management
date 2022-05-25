//
//  modulSelectViewController.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 24/05/22.
//

import UIKit

class modulSelectViewController: UIViewController {
    
    @IBOutlet weak var modulCollectionView: UICollectionView!
    
    var hasSetPointOrigin = false
    var pointOrigin: CGPoint?
    
    override func viewDidLayoutSubviews() {
        if !hasSetPointOrigin {
            hasSetPointOrigin = true
            pointOrigin = self.view.frame.origin
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerPanGesture()
        registerCollectionView()
    }
    
    func registerPanGesture(){
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGestureRecognizerAction))
        view.addGestureRecognizer(panGesture)
    }
    @objc func panGestureRecognizerAction(sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        
        // Not allowing the user to drag the view upward
        guard translation.y >= 0 else { return }
        
        // setting x as 0 because we don't want users to move the frame side ways!! Only want straight up or down
        view.frame.origin = CGPoint(x: 0, y: self.pointOrigin!.y + translation.y)
        
        if sender.state == .ended {
            let dragVelocity = sender.velocity(in: view)
            if dragVelocity.y >= 1300 {
                self.dismiss(animated: true, completion: nil)
            } else {
                // Set back to original position of the view controller
                UIView.animate(withDuration: 0.3) {
                    self.view.frame.origin = self.pointOrigin ?? CGPoint(x: 0, y: 400)
                }
            }
        }
    }
    
    //delete this when not underdevelopment
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true,completion: nil)
    }
    
    func registerCollectionView() {
        let nibCell = UINib(nibName: "modulSelectCollectionViewCell", bundle: nil)
        modulCollectionView.register(nibCell, forCellWithReuseIdentifier: "cellModul")
    }
}


extension modulSelectViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        departmentList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellModul", for: indexPath) as! modulSelectCollectionViewCell
        cell.setup(with: departmentList[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Cell: \(indexPath.row)")
        
        switch indexPath.row {
        case 0:
            NotificationCenter.default.post(name: Notification.Name("modul"), object: "SECURITY")
        case 1:
            NotificationCenter.default.post(name: Notification.Name("modul"), object: "CLEANING")
        case 2:
            NotificationCenter.default.post(name: Notification.Name("modul"), object: "ENGINEER")
        case 3:
            NotificationCenter.default.post(name: Notification.Name("modul"), object: "PEST CONTROL")
        case 4:
            NotificationCenter.default.post(name: Notification.Name("modul"), object: "HSE")
        default:
            print("fail")
        }
        self.dismiss(animated: true)
    }
    
}
