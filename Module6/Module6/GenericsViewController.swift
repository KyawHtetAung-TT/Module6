//
//  GenericsViewController.swift
//  Module6
//
//  Created by Ryan Willson on 6/22/21.
//

import UIKit

class GenericsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

/*
 
 Generic
 - fix code duplication
 - using any as "Generic"
 - generic syntax
 - type constraint
 - is arrays functions, dictionary, optional
 - generics can be used with class, struct, enum, protocol, function
 
 # Write specific code first, and generalize only when needed
 
 */


func sumTwoValueInt( a : Int, b : Int) -> Int {
    return a + b
}

func sumTwoValueDouble( a: Double, b : Double) -> Double{
    return a + b
}

func sumTwoValueFloat( a : Float , b : Float) -> Float{
    return a + b
}

func sumExample(){
    
    let aValue : Int = 1
    let bValue : Int = 1
    let _ = sumTwoValueInt(a: aValue, b: bValue)   // 2
    let _ = sumTwoValueDouble(a: Double(aValue), b: Double(bValue)) // 2.0
    let _ = sumTwoValueFloat(a: Float(aValue), b: Float(bValue)) // 2.0
    
}


// --- Refactor with Generic ---

func  sumValue<T : AdditiveArithmetic>( a : T, b : T) -> T {
    return a + b
}

func sumExample2(){
    
    let aValue : Float = 1
    let bValue : Float = 2
    
    print(sumValue(a: aValue, b: bValue))  // 2.0
}


class GenericsViewController1 : UIViewController{
    
    enum CoinFace {
        case head
        case tail
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fruits = ["apple","banana","orange"]
        print(type(of: fruits)) // Array <String>
        let _ : [String] = fruits.map { (item)-> String in
            return ""
        }
        
        
        let oddNumbers = [1,3,5,7,9]
        print(type(of: oddNumbers)) // Array <Int>
        let _ : [Bool] = oddNumbers.map { (item) -> Bool in
            return false
        }
        
        
        let views = [UITextField(),UIButton(),UILabel(),UITextView()]
        print(type(of: views))// Array <UIView>
        let _ : [Double] = views.map { (item) -> Double in
            return 0
        }
        
        
        let flipCoin : [CoinFace] = [.head,.tail,.head,.tail,.tail]
        print(type(of: flipCoin)) // Array<CoinFace>
        
        
        
    }
    
    
    
    
    
}















