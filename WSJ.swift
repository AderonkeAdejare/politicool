

    //
    //  WSJ.swift
    //  PolitiCute
    //
    //  Created by Apple on 8/1/19.
    //  Copyright © 2019 Apple. All rights reserved.
    //
    
    import UIKit

    
    class WSJ: UIViewController, UIWebViewDelegate {
       
        @IBOutlet var npr: UIWebView!
        var strURL = "https://www.wsj.com/news/politics"
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let url = NSURL(string: strURL)
            let request = NSURLRequest(url: url! as URL)
            npr.loadRequest(request as URLRequest)
            // Do any additional setup after loading the view.
            
        }
        
    

            
        }


