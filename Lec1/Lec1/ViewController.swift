//
//  ViewController.swift
//  Lec1
//
//  Created by HACKERU on 23/02/2020.
//  Copyright © 2020 HACKERU. All rights reserved.
//

import UIKit

//ViewController: UIViewController{}
class ViewController: UIViewController {

    //sum of an array:
    func sum(arr: [Int])->Int{
        var s = 0
        for num in arr{
            s += num
        }
        return s
    }
    
    //smallest element in an array:
    //[2, 0, -1, 10]
    func min(arr: [Int])->Int{
        var m = arr[0] //-1
        
        for num in arr{
            if num < m{
                m = num
            }
        }
        
        return m
    }
    //random array of size
    func randArr(size: Int) -> [Int]{
        var arr = [Int]()
        
        for _ in 0..<size{
            arr.append(Int.random(in: 0...100))
        }
        
        return arr
    }
 
    //usage: printInt(it: 10)
    func printIt(it: Int){
        //
    }
    
    //usage: printNumber(10)
    func printNumber(_ number: Int){
        
    }
    //functions:
     func sayHello(){ // -> Void{
         print("Hello, Ploni")
     }
     
    func sayHello(to name:String){
        print("Hello, \(name)")
    }
    
    //default value for parameter
    func hello(name: String = "Ploni"){
        print("Hello, \(name)")
    }
    
    
    
    
    
    
    
    
    
    
    
    func getRandomNumber() -> Int{
        return Int.random(in: 1...10)
    }
    
    //omCreate(){}
    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo()
        // Write your code here:
        //run the function:
       sayHello(to: "Moshe")
       printNumber(10)
        
        
        let n = getRandomNumber()
        print(n)
        
        
        var arr = [Int]()
        var num1 = 10
        
        //loop 5 times:
        for _ in 1...5{
            arr.append(num1) //add 10 to the array:
            num1 -= 2
        }
        
        print(arr)//10, 8, 6, 4, 2
        
        //loop from 10 to 2 by -2
        for i in stride(from: 10, to: 2, by: -2){
            print(i)
        }
        
        //1, 1, 2, 3, 5, 8, 13, 21 ,34...
        var fib = [1, 1]
        //fill the 10 first elements in the fibonacci series
        //use a for loop
        //fib[i] =
        for i in 2...9{
            fib.append(fib[i-1] + fib[i-2])
        }
        print(fib) //[1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
        
        
        
        
        let r = Int.random(in: 1...10)
        print(r) //random int between 1 to 10
        
        //A)fill an array with 5 random numbers.
        //B)challenge***make sure the numbers don't repeat!
        
        //new array
        var randArr = [Int]()
        //loop 5 times:
        for _ in 1...5{
            
            //random number:
            var rNumber = Int.random(in: 1...100)
            
            //while the number is found in the array -> generate another number
            while randArr.contains(rNumber) {
                //generate another random number:
                rNumber = Int.random(in: 1...100)
            }
            //rNumber is not in the array:
            //append the number to the array
            randArr.append(rNumber)
        }
        
        
        
        
        
//        let arr = [2, -1, 10, 222, 3, 4 ,5 ,6 ,7, 10]
//
//        var sum = 0
//        var mult = 1
//        var min = arr[0]
//        var max = arr[0]
//
//        for i in 0..<arr.count{
//            sum += arr[i]
//            mult *= arr[i]
//            if arr[i] < min{
//                min = arr[i]
//            }
//            if arr[i] > max{
//                max = arr[i]
//            }
//        }
//        for num in arr{
//            sum += num
//            mult *= num
//
//            if num < min{
//                min = num
//            }
//
//            if num > max {
//                max = num
//            }
//        }
        
        
        
//        print("The sum: \(sum)")
//        print("The mult: \(mult)")
//        print("Min: \(min)")
//        print("Max: \(max)")
//
//
//        var numbers = [Int]()
//        //fill numbers with 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
//        for num in 20...30{
//            numbers.append(num)
//        }
//        print(numbers)
        
//        let x = 10
//        print(x)
//
//        //Double, String, Int, Float, Bool
//        //Double?, String?, Int, Float?, Bool?
//
//
//        //arrays:
//
//        //Java~like syntax...
//        var arr = Array<Int>()
//
//        //very usefull:
//        //new Array
//        var arr1 = [Int]()
//        var arr2: [Int] = []
//
//        //pre known values:
//        var arr3 = [1, 2 ,3, 4, 10] //List
//
//        //iter:
//        for num in arr3{
//            print(num)
//        }
//
//        //fori:
//        for i in 0..<arr3.count{
//
//        }
//
//        //1 to 10 inclusive
//        for i in 1...10{
//
//        }
//
//        //1 to 10 (not including 10)
//        for i in 1..<10{
//
//        }
        
        
    }
}

