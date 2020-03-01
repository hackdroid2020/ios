//
//  HomeWorkViewController.swift
//  Lec3LoveCalculator
//
//  Created by HACKERU on 01/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class HomeWorkViewController: UIViewController {
    @IBOutlet weak var stack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view Did Load")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //the view is presented
        print("view Did Appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewWillDisappear")
        print("The view is not visible")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(#function) //print the func we are in :)
        
        if UIDevice.current.orientation.isLandscape{
            stack.axis = .horizontal
        }else if UIDevice.current.orientation.isPortrait{
            stack.axis = .vertical
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
