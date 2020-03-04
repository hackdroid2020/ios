//
//  ViewController.swift
//  Lec4ColorSliders
//
//  Created by HACKERU on 04/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Outlets:
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var hexLabel: UILabel!
    
    func changeColor(){
        let red   = CGFloat(redSlider.value / 255)
        let green = CGFloat(greenSlider.value / 255)
        let blue  = CGFloat(blueSlider.value / 255)
 
        view.backgroundColor = UIColor(red: red, green: green,
                                       blue: blue, alpha: 1)
        
        //label (Hex String from Int)
        let r = Int(redSlider.value)
        let g = Int(greenSlider.value)
        let b = Int(blueSlider.value)
        
        let redHex = String(r, radix: 16, uppercase: true)
        let greenHex = String(g, radix: 16, uppercase: true)
        let blueHex = String(b, radix: 16, uppercase: true)
        
        hexLabel.text = "#\(redHex)\(greenHex)\(blueHex)"
    }
    
    //MARK: Sliders Changed:
    @IBAction func redSliderChanged(_ sender: UISlider) {
        //when the slider changes -> change the text in redTextField
        redTextField.text = String(Int(sender.value))
        changeColor()
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenTextField.text = String(Int(sender.value))
        changeColor()
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueTextField.text = String(Int(sender.value))
        changeColor()
    }
    //MARK: Text Changed:
    @IBAction func redTextChanged(_ sender: UITextField) {
        //get the text from the textField (if it's nil txt = "")
        let txt = sender.text ?? ""

        //slider needs a Float
        //convert the String to Float (if the conversion fails floatVal = 0)
        let floatVal = Float(txt) ?? 0
        //set the value of the slider
        redSlider.value = floatVal
        changeColor()
    }
    
    @IBAction func greenTextChanged(_ sender: UITextField) {
        //get the text from the textField (if it's nil txt = "")
        let txt = sender.text ?? ""
        
        //slider needs a Float
        //convert the String to Float (if the conversion fails floatVal = 0)
        let floatVal = Float(txt) ?? 0
        
        greenSlider.value = floatVal
        changeColor()
    }
    
    @IBAction func blueTextChanged(_ sender: UITextField) {
        //get the text from the textField (if it's nil txt = "")
        let txt = sender.text ?? ""
        
        //slider needs a Float
        //convert the String to Float (if the conversion fails floatVal = 0)
        let floatVal = Float(txt) ?? 0
        
        blueSlider.value = floatVal
        changeColor()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

