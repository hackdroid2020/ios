//
//  Person.swift
//  Lec2
//
//  Created by HACKERU on 26/02/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import Foundation
//structs
struct Person {
    //stored properties:
    let firstName:String
    let lastName:String?
    
    //computed properties:
    var fullName: String{
        //explicitly unwrapped optionals:
        //if (lastName != nil){
        //  lastName!
        //}

        //nil coalescing operator:
        //if lastName != nil -> lastName, else ""
        //return firstName + " " + (lastName ?? "")
        
        //optional binding:
        //if lastName is not nil -> let lastName = lastName {inside the block...}
        if let lastName = lastName{
            //lastName is not optional inside the block
            return firstName + " "  + lastName
        }
        return firstName
    }

    //we may write our own init
    init(firstName: String, lastName: String? = nil){
           self.firstName = firstName
           self.lastName = lastName
    }
}

//global func (func not inside a class)
func test(){
    let p = Person(firstName: "Moshe" ,lastName: "Doe")
    print(p.fullName)
}


//    //method is a object action
//    func getFullName() -> String {
//        return "Person First = \(firstName) And lastName =  \(lastName)"
//        //return firstName + " - " + lastName
//    }
