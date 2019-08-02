//
//  NewsViewController.swift
//  PolitiCute
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import WebKit

class NPR: UIViewController {
    
    let webView: WKWebView = {
        let view = WKWebView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.npr.org/sections/politics/")
        let myWebsite = URLRequest(url: url!)
        
        webView.load(myWebsite)
        view.addSubview(webView)
        setupWebViewScreen()
        
    }
    
    func setupWebViewScreen() {
        webView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        webView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        webView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        webView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
    }
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        
        func setGradientBackground() {
            let colorTop =  UIColor.red.cgColor
            let colorBottom = UIColor.yellow.cgColor
            
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [ colorTop, colorBottom]
            gradientLayer.locations = [ 0.0, 1.0]
            gradientLayer.frame = self.view.bounds
            
            self.view.layer.insertSublayer(gradientLayer, at: 0)
        }
        

        
        /*init?(frame: CGRect,
         configuration: WKWebViewConfiguration){
         return nil
         }
         
         } */
        
    }
    
}

