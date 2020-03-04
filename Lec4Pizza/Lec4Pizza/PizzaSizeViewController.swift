//
//  ViewController.swift
//  Lec4Pizza
//
//  Created by HACKERU on 04/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class PizzaSizeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? ToppingsViewController{
            
            if segue.identifier == "small"{
                dest.pizza = Pizza(size: .small)
            }else if segue.identifier == "medium"{
                dest.pizza = Pizza(size: .medium)
            }else{
                dest.pizza = Pizza(size: .large)
            }
        }
    }
}

