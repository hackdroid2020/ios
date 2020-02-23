//
//  Enums.swift
//  Lec1
//
//  Created by HACKERU on 23/02/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit
//a pre defined list of values
//enums:
enum Color {
    case Black
    case Red
    case Green
    case Blue
}
//enum with raw value:
enum Day: Int{
    case sunday = 1, monday, tuesday, wednesday
    case thursday, friday, saturday
    //enums may have functions:
    func printHebrewName(){
        switch self {
        case .friday:
            print("שישי")
        case .sunday:
            print("ראשון")
        case .monday:
            print("שני")
        case .tuesday:
            print("שלישי")
        case .wednesday:
            print("רביעי")
        case .thursday:
            print("חמישי")
        case .saturday:
            print("שבת")
        }
    }
}
enum Rank:Int{
    case two = 2, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace
}

enum Suit: Int{
    case spades = 0, hearts, diamonds, clubs
    //print ("♠️")
}

//global function
func demo(){
    let day = Day.friday
    day.printHebrewName()
    
    
    
    
    //print("") is a global func
    let color = Color.Red
    switch color {
    case .Red:
        print("Red")
    case .Black:
        print("Black")
    default:
        print("not red, not black")
    }
    
    
}


enum Product: Int {
    case regular = 10, medium = 20, large = 30
}

