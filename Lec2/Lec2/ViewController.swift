//
//  ViewController.swift
//  Lec2
//
//  Created by HACKERU on 26/02/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var askButton: UIButton!
    @IBAction func changed(_ sender: UITextField) {
        let text = questionTextField.text ?? ""
        askButton.isEnabled = text.count > 0
    }
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    let answersArray = ["Yes", "No", "Maybe"]
    
    @IBAction func askButtonTapped(_ sender: UIButton) {
        let q = questionTextField.text ?? "No Text"
        print(q)
        
        let r = Int.random(in: 0..<answersArray.count)
        answerLabel.text = answersArray[r]
        
        answerLabel.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

