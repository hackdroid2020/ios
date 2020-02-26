//
//  Recipe.swift
//  Lec2
//
//  Created by HACKERU on 26/02/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import Foundation

//Java interface:
//list of methods we need to implement

//in swift we have protocols:
protocol Printable {
    //func print()
    //func draw()
    
    //variable declaration inside a protocol
    var description: String{get}
}

struct Recipe: CustomStringConvertible {
    var description: String{
        return "\(name)"
    }
    
    //    var description: String{
    //        return "\(name)"
    //    }
    
    //properties:
    let name: String
    let prepTime:String
    let ingredients: [String]
    let instructions: [String]
    let category: Category
    //init:
    //methods:
}

extension Recipe{ //lec2.Recipe.Category (Dairy)
    enum Category: CustomStringConvertible{
        case Dairy, Meat, Veggie
        
        var description: String{
            switch self {
            case .Dairy:
                return "Dairy"
            case .Meat:
                return "Meat"
            case .Veggie:
                return "Veggie"
            }
        }
    }
}

func demo(){
    let recipe = Recipe(name: "Omlet", prepTime: "1:30",
                        ingredients: ["1 Egg", "Butter", "Salt", "Pepper"],
                        instructions: ["break the egg and go home :)"],
                        category: .Dairy)
    print(recipe)
}






struct Car: Printable {
    //properties:
    var name: String
    
    //
    var description: String{
        return "\(name)"
    }
}


//let car = Car(name: "Renault")
//print(car.description)



struct Student: CustomStringConvertible {
    var description: String{
        return "The Name of the Student: \(firstName) \(lastName)"
    }
    
    var firstName:String
    var lastName: String
    
    //fullName
    
    //make Student conform to CustomStringConvertible
}
