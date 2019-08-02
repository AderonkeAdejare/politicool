//
//  NewsViewController.swift
//  PolitiCute
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import WebKit

class NewsViewController: UIViewController {
    
    func setGradientBackground() {
        let colorTop =  UIColor.red.cgColor
        let colorBottom = UIColor.yellow.cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.locations = [ 0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
     
    }


}


