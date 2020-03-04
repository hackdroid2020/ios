//
//  ViewController.swift
//  Lec4Segues
//
//  Created by HACKERU on 04/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //View controller methods:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //dest points to SecondViewController
        if let dest = segue.destination as? SecondViewController{
            dest.name = textField.text
        }
    }
}

