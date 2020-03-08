//
//  ViewController.swift
//  Lec5PickersSlotMachine
//
//  Created by HACKERU on 08/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

//   1) fill the picker with 3 components
//   Each displays the same fruit array
//

import UIKit

class ViewController: UIViewController {
    let images:[UIImage] = [#imageLiteral(resourceName: "10"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "8") , #imageLiteral(resourceName: "3"),  #imageLiteral(resourceName: "4")]
    let fruit = ["🍊", "🍌", "🍒", "🍑", "🍍", "🍋"]
    
    @IBOutlet weak var slotMachine: UIPickerView!
    
    @IBAction func spin(_ sender: UIButton) {
        spin()
    }
    
    //if we have 3 same values: print "Won"
    
    private func spin(){
        var rands = [Int]()
        for i in 0..<slotMachine.numberOfComponents{
                 //number of rows in component? - 7
                 let numOfRows = slotMachine.numberOfRows(inComponent: i)
                 
                 //random between 0 to <7
                 let rand = Int.random(in: 0..<numOfRows)
                 rands.append(rand)
                 //slot machine -> select the random row
                 slotMachine.selectRow(rand, inComponent: i, animated: true)
        }
        
        if rands[0] % images.count == rands[1] % images.count && rands[1] % images.count == rands[2] % images.count{
            print("Won")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slotMachine.isUserInteractionEnabled = false // don't touch :)
        spin()
        // Do any additional setup after loading the view.
        
        
    }
}


extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        100
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let image = images[row % images.count] // UIImage
        
        let imageView = UIImageView(image: image)
        
        return imageView
    }
 
}

extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return 1000
    }
    
    
   // didselect
    
}
