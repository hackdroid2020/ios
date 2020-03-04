//
//  ToppingsViewController.swift
//  Lec4Pizza
//
//  Created by HACKERU on 04/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class ToppingsViewController: UIViewController {
    
    var pizza: Pizza? //we pass the pizza from one screen to the other
    
    @IBAction func onionsTapped(_ sender: UIButton) {
        sender.alpha = sender.alpha == 1 ? 0.5 : 1
        
        //add the topping? or remove it?
        if sender.alpha == 0.5{
            //add topping
            pizza?.toppings.insert(.onions)
        }else{
            pizza?.toppings.remove(.onions)
        }

    }
    @IBAction func olivesTapped(_ sender: UIButton) {
        sender.alpha = sender.alpha == 1 ? 0.5 : 1
        
        //add the topping? or remove it?
        if sender.alpha == 0.5{
            //add topping
            pizza?.toppings.insert(.olives)
        }else{
            pizza?.toppings.remove(.olives)
        }
    }
    @IBAction func tomatoesTapped(_ sender: UIButton) {
        sender.alpha = sender.alpha == 1 ? 0.5 : 1
        
        //add the topping? or remove it?
        if sender.alpha == 0.5{
            //add topping
            pizza?.toppings.insert(.tomatoes)
        }else{
            pizza?.toppings.remove(.tomatoes)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? SummaryViewController{
            dest.pizza = pizza
        }
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
