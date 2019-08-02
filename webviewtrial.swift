//
//  webviewtrial.swift
//  PolitiCute
//
//  Created by Apple on 8/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class webviewtrial: UIViewController, UIWebViewDelegate {


    
    @IBOutlet var npr: UIWebView!
    var strURL = "https://www.npr.org/sections/politics/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: strURL)
        let request = NSURLRequest(url: url! as URL)
        npr.loadRequest(request as URLRequest)
        // Do any additional setup after loading the view.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
