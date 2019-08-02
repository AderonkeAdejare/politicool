//
//  ViewController.swift
//  PolitiCute
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBAction func register() {
            //openUrl(urlStr: )
UIApplication.shared.open(URL(string: "https://vote.gov")! as URL, options: [:], completionHandler: nil)
    }

    func setGradientBackground() {
        let colorTop =  UIColor.red.cgColor
        let colorBottom = UIColor.blue.cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.locations = [ 0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        // Do any additional setup after loading the view.
    }
    
    
    }
    

