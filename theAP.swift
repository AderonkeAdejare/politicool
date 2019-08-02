//
//  theAP.swift
//  PolitiCute
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Apple. All rights reserved.
//

    import UIKit
    class theAP: UIViewController, UIWebViewDelegate {
            
            @IBOutlet var ap: UIWebView!
            var strURL = "https://www.apnews.com/apf-politics"
            
            override func viewDidLoad() {
                super.viewDidLoad()
                let url = NSURL(string: strURL)
                let request = NSURLRequest(url: url! as URL)
                ap.loadRequest(request as URLRequest)
                // Do any additional setup after loading the view.
                
            }
        
}
