//
//  String + extensions.swift
//  Lec3LoveCalculator
//
//  Created by HACKERU on 01/03/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import Foundation

extension String{
    //extension to String
    var unicode:Int{
           var sum = 0
           
           for c in self.unicodeScalars{
               sum += Int(c.value)
           }
           return sum //65 + 65
       }
}


//"abc".unicode
