//
//  ViewController.swift
//  Lec3LoveCalculator
//
//  Created by HACKERU on 01/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var secondNameText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    //calback when touches begin:
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        //dismiss the keyboard:
        view.endEditing(true)
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let name1Unicode = firstNameText.text?.lowercased().unicode ?? 0
        let name2Unicode = secondNameText.text?.lowercased().unicode ?? 0
        
        let result = (name1Unicode + name2Unicode) % 101
        
        resultLabel.text = String(result) + "%"
        
        //dismiss the keyboard:
        view.endEditing(true)
    }
    
    
    //extension to String
    func unicode(_ string: String)->Int{
        var sum = 0
        
        for c in string.unicodeScalars{
            sum += Int(c.value)
        }
        
        return sum
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

