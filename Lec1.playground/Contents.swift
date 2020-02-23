import UIKit

//play with code
//swift is type safe.
//str is a String
//type of str is infered to be a String
//var str = "Hello, playground" //str is a String
//str = "hello!"
//
//
//print("Hi")
//
////type annotations:
//
//var x:Int = 10
//var y:Double = 10.1
//
////const
//let lang = "Swift"
////lang = "Java"
//
//
//var myChar:Character = "a" // String


//variable and function names are written in camelCase
//firstName


//swift has full unicode support
//ctrl + cmd + space
var 🐶 = "🦊"


//print numbers and Strings:
var age = 18

var name = "Moshe"


//No String + Number
//print moshe is 18 years old:

//string intepolation:

//string concat is less effiecient
var z =  "x" + "y"
var s = "\(name) is \(age) years old"



var bill:Double = 485 //bill in a resturant:

var tip:Double = 10 //tip percent

var total = bill + bill * tip / 100.0

//print the bill was xxx you should leave yyy including tip.
print("The bill was \(bill) you should leave \(total) including tip")
//Think Double!


//types:
var happy:Bool = true
//Int, Double, Float, Bool, String, Character
//Int?, Double?, Float?, Bool?, String?, Character?
var myFloat: Float  = 10

//UInt

//var name:String = nil


var lastName:String
 

//Optional String
var firstName:String? = "Moshe"
 
//working with optionals:
//if firstName != nil{
    //explicitly unwrapped optional
    print(firstName!)
//}



//type conversion:
var myAge: Int = 20

//convet myAge to Double

//type conversion is done via the init of Type Double

var myAgeDouble = Double(myAge)


print(Double(myAge))

var str2 = "123"

//convert str2 to Int?
var strAsNumber = Int(str2)

print(strAsNumber) // optional
