//
//  ViewController.swift
//  Lec5Nav
//
//  Created by HACKERU on 08/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func toSec(_ sender: UIBarButtonItem) {
        
        if let text = nameTextField.text, text.count >= 3{
            //perform a Segue via code.
            performSegue(withIdentifier: "toSecond", sender: text) //sender:Any?
        }
        //next step: prepareForSegue :)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //chcek that sender is a String?
        
        
        if let dest = segue.destination as? PopUpViewController{
            dest.modalPresentationStyle = .fullScreen
        }
        
        if let dest = segue.destination as? SecondViewController{
//            if let txt = nameTextField.text{
//
//            }
            if let myText = sender as? String{
                
            }
        }
    }

}

