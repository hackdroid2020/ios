//
//  ViewController.swift
//  Lec5IsrealRailPickers
//
//  Created by HACKERU on 08/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var fromText: UITextField!
    @IBOutlet weak var toTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.isHidden = true
        // Do any additional setup after loading the view.
        //textField has an input view:
        
        //new pickerView from code:
        let pickerv = UIPickerView()
        pickerv.delegate = self
        pickerv.dataSource = self
        
        toTextField.inputView = pickerv
        fromText.inputView = pickerv
        
    }
    
    let stations = ["A" , "B" , "C"]
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        stations.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        stations[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            //from
            fromText.text = stations[row]
        }else{
            //to
            toTextField.text = stations[row]
        }
    }
}
