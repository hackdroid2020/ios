//
//  ViewController.swift
//  Lec3
//
//  Created by HACKERU on 01/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fontLabel: UILabel!
    
    @IBAction func sliderChanged(_ sender: UISlider) {

        fontLabel.text = String(Int(sender.value))
        
        //save the old font
        let font = fontLabel.font
        
        //new font with a new size:
        
        //optional chaining
        let newFont = font?.withSize(CGFloat(sender	.value))
        
        fontLabel.font = newFont
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

