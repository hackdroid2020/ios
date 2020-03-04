//
//  SecondViewController.swift
//  Lec4Segues
//
//  Created by HACKERU on 04/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    //label is explicitly unwrapped optional
    //label is nil until viewdidload
    //we tried to use the label prior to it's init.
    
    var name:String?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = "Welcome, \(name ?? "")"
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
