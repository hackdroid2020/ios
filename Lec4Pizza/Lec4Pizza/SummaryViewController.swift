//
//  SummaryViewController.swift
//  Lec4Pizza
//
//  Created by HACKERU on 04/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    @IBOutlet weak var pizzaSizeImageView: UIImageView!
    @IBOutlet weak var toppingsStack: UIStackView!
    
    var pizza: Pizza? //struct (size, toppings)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //summary label:
//        if let p = pizza{
//            switch p.size {
//            case .large:
//                label.text = "Big"
//            case .medium:
//                label.text = "Medium"
//            case .small:
//                label.text = "Small"
//            }
//
//            for t in p.toppings{
//                label.text = label.text! + " " + t.rawValue
//            }
//        }
        
        if let pizza = pizza{
            //if the pizza is not nil, declare a new const = pizza (not optional)
            switch pizza.size {
            case .large:
                pizzaSizeImageView.image = #imageLiteral(resourceName: "icons8-pizza-2")
            case .medium:
                pizzaSizeImageView.image = #imageLiteral(resourceName: "icons8-pizza-1")
            case .small:
                pizzaSizeImageView.image = #imageLiteral(resourceName: "icons8-pizza")
            }
            
            for topping in pizza.toppings{
                //for each topping -> new ImageView()
                //add the new Imageview to our stack view
                
                //image ~ Bitmap from it's name in assets
                let image = UIImage(named: topping.rawValue)
                
                //Image View (ios View)
                let imageView = UIImageView(image: image)
                
                //add the image to the stackView:
                toppingsStack.addArrangedSubview(imageView)
            }
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
