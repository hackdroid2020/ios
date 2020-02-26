//
//  ViewController.swift
//  Lec2Part2
//
//  Created by HACKERU on 26/02/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //classes are passed by ref
        //structs are passed by value
        
        //STRUCT!!!
        //value types
        var p = Point(x: 10, y: 20)
        var p2 = p  // copy of p
        
        
        //Classes:
        //reference types:
        var mypoint = MyPoint(x: 20, y: 30)
        var mypoint2 = mypoint //two pointers to the same address
    }
}
//structs(no inheritance)
//may conform to protocols
//passed by value (copy)
//light weight
struct Point{
    var x: Int
    var y: Int
}
//classes enable
//swift compiler does not give us a free init
class MyPoint: CustomStringConvertible {
    var x: Int
    var y: Int
    
    var description: String{
        return "(\(x), \(y))"
    }
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
}
//enums
//protocols (inetrfaces in java)
//CustomStringConvertible
