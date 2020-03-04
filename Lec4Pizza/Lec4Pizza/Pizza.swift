//
//  Pizza.swift
//  Lec4Pizza
//
//  Created by HACKERU on 04/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import Foundation

struct Pizza {
    //toppings (onions, olives, tomatoes)
    //size (small, medium, large)
    let size: Size
    var toppings: Set<Topping> = []
}
//
//func demo(){
//    let p = Pizza(size: .large)
//}

enum Topping:String {
    case onions = "onions", olives = "olives", tomatoes = "tomatoes"
}

enum Size{
    case large, medium, small
}
