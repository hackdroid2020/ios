//
//  PickersViewController.swift
//  Lec5Pickers
//
//  Created by HACKERU on 08/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class PickersViewController: UIViewController {
    @IBOutlet weak var foodPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hook the picker to the methods we implmented
        //        foodPicker.dataSource = self
        //        foodPicker.delegate = self
        
        //protocol UIPickerViewDataSource
        //protocol UIPickerViewDelegate
    }
    //proeperty (stored)
    let meals = ["Burger", "Pizza", "Schnitzel"]
    let drinks = ["Water", "Vodka", "Orange", "Health Shake", "Beer"]
    
    //array of arrays:
    let options = [
        ["Burger", "Pizza", "Schnitzel"],
        ["Water", "Vodka", "Orange", "Health Shake", "Beer"],
        ["Cookie" , "Cake", "Fruit"]
    ]
}



extension PickersViewController: UIPickerViewDataSource{
    
    //how many wheels?
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return options.count //2 arrays in the array of arrays:
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return options[component].count
    }
}
extension PickersViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //var a = Array(repeating: 0, count: 3)
       return options[component][row]
    }
    
    //var selection =[0, 0, 0]
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Shnitezel, Coke, Cookie")
        
        let food = pickerView.selectedRow(inComponent: 0)
        let drink = pickerView.selectedRow(inComponent: 1)
        let desert = pickerView.selectedRow(inComponent: 2)
        
        print(options[0][food])
        print(options[1][drink])
        print(options[2][desert])
    }
}
