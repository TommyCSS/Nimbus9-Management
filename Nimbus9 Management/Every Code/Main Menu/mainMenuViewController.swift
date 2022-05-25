//
//  mainMenuViewController.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 20/05/22.
//

import UIKit

class mainMenuViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .black
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 2
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.3
        setTabBarItems()
        
    }
    
    //function untuk setting tab bar programmatically
    func setTabBarItems(){
        
        let ih0 = Functions().resizeImage(image: UIImage(named: "Home_0")!,
                                          targetSize: CGSize(width: 35.0, height: 35.0))
        let ih1 = Functions().resizeImage(image: UIImage(named: "Home_1")!,
                                          targetSize: CGSize(width: 35.0, height: 35.0))
        
        let cl0 = Functions().resizeImage(image: UIImage(named: "Checklist_0")!,
                                          targetSize: CGSize(width: 35.0, height: 35.0))
        let cl1 = Functions().resizeImage(image: UIImage(named: "Checklist_1")!,
                                          targetSize: CGSize(width: 35.0, height: 35.0))
        
        let sc0 = Functions().resizeImage(image: UIImage(named: "Scan_0")!,
                                          targetSize: CGSize(width: 35.0, height: 35.0))
        let sc1 = Functions().resizeImage(image: UIImage(named: "Scan_1")!,
                                          targetSize: CGSize(width: 35.0, height: 35.0))
        
        let ff0 = Functions().resizeImage(image: UIImage(named: "FieldFindings_0")!,
                                          targetSize: CGSize(width: 35.0, height: 35.0))
        let ff1 = Functions().resizeImage(image: UIImage(named: "FieldFindings_1")!,
                                          targetSize: CGSize(width: 35.0, height: 35.0))
        
        let pf0 = Functions().resizeImage(image: UIImage(named: "Profile_0")!,
                                          targetSize: CGSize(width: 35.0, height: 35.0))
        let pf1 = Functions().resizeImage(image: UIImage(named: "Profile_1")!,
                                          targetSize: CGSize(width: 35.0, height: 35.0))
        
        
        let myTabBarItem1 = (self.tabBar.items?[0])! as UITabBarItem
        myTabBarItem1.image = ih0?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem1.selectedImage = ih1?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem1.title = "Home"
        myTabBarItem1.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        
        let myTabBarItem2 = (self.tabBar.items?[1])! as UITabBarItem
        myTabBarItem2.image = cl0?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem2.selectedImage = cl1?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem2.title = "Checklist"
        myTabBarItem2.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        
        
        let myTabBarItem3 = (self.tabBar.items?[2])! as UITabBarItem
        myTabBarItem3.image = sc0?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem3.selectedImage = sc1?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem3.title = "Scan"
        myTabBarItem3.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        
        let myTabBarItem4 = (self.tabBar.items?[3])! as UITabBarItem
        myTabBarItem4.image = ff0?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem4.selectedImage = ff1?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem4.title = "Field Findings"
        myTabBarItem4.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        
        let myTabBarItem5 = (self.tabBar.items?[4])! as UITabBarItem
        myTabBarItem5.image = pf0?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem5.selectedImage = pf1?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        myTabBarItem5.title = "My Profile"
        myTabBarItem5.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
    }
    
    @IBAction func unwindToMainMenu( _ seg: UIStoryboardSegue) {}
}
