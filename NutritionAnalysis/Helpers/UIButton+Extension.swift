//
//  UIButton+Extension.swift
//  NutritionAnalysis
//
//  Created by Mina Thabet on 29/03/2021.
//

import UIKit


extension UIButton{
    
    func enableButton(){
        self.isEnabled = true
        self.backgroundColor = UIColor.systemGreen
    }
    
    func disableButton(){
        self.isEnabled = false
        self.backgroundColor = UIColor.systemGray
    }
}
