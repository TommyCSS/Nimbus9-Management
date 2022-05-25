//
//  FunctionList.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 20/05/22.
//

import Foundation
import UIKit

class Functions: UIViewController{
    
    //function untuk atur gambar background dan logo perusahaan pada view LoginCompany
    func setupInitialLoginCompanyImage(bgImg: UIImageView, imgLogo: UIImageView)
    {
        bgImg.image = UIImage(named: "Background_Login_Company")
        
        imgLogo.image = UIImage(named: "Logo_Company")
        
    }
    
    //function untuk atur gambar background dan warna view pada LoginUser sesuai dengan tema perusahaan
    func setupInitialLoginUserTheme(logoCompany: UIImageView?, linkLogo: String,
                                    bgView: UIView?, bgThemeHexColor: String?){
        logoCompany?.image = UIImage(named: linkLogo)
        bgView?.backgroundColor = UIColor(hexString: bgThemeHexColor ?? "#105767")
        bgView?.layer.opacity = 0.9
    }
    
    //function untuk hide dan unhide password textfield
    func securedField(textField: UITextField){
        if textField.isSecureTextEntry == true{
            textField.isSecureTextEntry = false
        } else {
            textField.isSecureTextEntry = true
        }
    }
    
    //function untuk resize image
    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage? {
        let size = image.size
        
        let widthRatio  = targetSize.width  / size.width
        let heightRatio = targetSize.height / size.height
        
        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio, height: size.height * widthRatio)
        }
        
        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(origin: .zero, size: newSize)
        
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage
    }
    
    //function shadow untuk UIView
    func shadowUIView(cview:UIView) {
        cview.layer.masksToBounds = false
        cview.layer.shadowColor = UIColor.black.cgColor
        cview.layer.shadowOffset = .zero
        cview.layer.shadowOpacity = 0.5
        cview.layer.shadowRadius = 1.0
    }
    
    //function untuk disable button
    func disableUIButton(cButton: UIButton){
        cButton.isEnabled = false
        cButton.setTitleColor(.lightGray, for: .disabled)
    }
        
}
