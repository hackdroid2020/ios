//
//  ViewController.swift
//  Lec5Pickers
//
//  Created by HACKERU on 08/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func datePicked(_ sender: UIDatePicker) {
        let d = sender.date
        
        print(d)
        //we want the date components: year, month, day, hour, minute:
        let c = Calendar(identifier: .gregorian)
        
        let year = c.component(.year, from: d)
        let month = c.component(.month, from: d)
        let day = c.component(.day, from: d)
        
        let hour = c.component(.hour, from: d)
        let minute = c.component(.minute, from: d)
        
        print(year, month, day, hour, minute)
        
        //date formatter: helps us display dates as a String, and vice-versa
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "EEEE/MM/yyyy HH:mm:ss"
        
        //date to String
        let dateString = dateFormatter.string(from: d)
        print(dateString)
        
        //string to date:
        let dd = dateFormatter.date(from: dateString)
        print(dd ?? Date())
        
    }
    
    func dateFromComponents(){
        //given 2020, 22, 01 -> Date
        let c = Calendar(identifier: .gregorian)
        
        var components = DateComponents()
        components.year = 2020
        components.day = 1
        components.month = 3
        components.hour = 9
        components.minute = 30
        
        let date = c.date(from: components)
        
        print(date!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFromComponents()
        // Do any additional setup after loading the view.
    }


}

