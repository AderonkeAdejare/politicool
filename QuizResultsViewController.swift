//
//  QuizResultsViewController.swift
//  PolitiCute
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class QuizResultsViewController: UIViewController {
        @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblResults: UITextField!
        var noCorrect = 0
        var total = 0
        override func viewDidLoad() {
            super.viewDidLoad()
            setGradientBackground()
            // Set the results
            lblResults.text = "You got \(noCorrect) out of \(total) correct"
            
            // Calculate the percentage of quesitons you got right
            var percentRight = Double(noCorrect) / Double(total)
            percentRight *= 100
            
            // Based on the percentage of questions you got right present the user with different message
            var title = ""
            if(percentRight < 50) {
                title = "You still have more to learn!"
            } else if(percentRight < 80) {
                title = "Almost there!"
            } else {
                title = "Great Job!"
            }
            lblTitle.text = title
        }
        // Do any additional setup after loading the view.
    
    func setGradientBackground() {
        let colorTop =  UIColor.red.cgColor
        let colorBottom = UIColor.yellow.cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ colorTop, colorBottom]
        gradientLayer.locations = [ 0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    

}
