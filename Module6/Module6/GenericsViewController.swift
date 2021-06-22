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


        
        
    
        // closure
        // function - Recap - keyword, parameters, return type / void
        // basic function

        func doSomething(param : String) -> String?{
            return ""
        }


        func doSomething2(){
            
        }


        // input parameter ( declared value can be assigned )
        // also changed in parent source

        func doSomething3(param : inout String){
            param = "value chagned"
        }


        var someValue : String = "This is value"
        doSomething3(param: &someValue)
        print(someValue)  // value changed

        
    // func is first class citizen - storing in data structure, can pass in as param, can assign
    // function is stroed in data structure
        
    var functions = [() -> String] ()
        func testFunction() -> String{
            return " this si test function"
        }
        
        functions.append(testFunction)
        print(functions[0]())

        
    // pass function as parameter
        func additionFormula( a : Int, b : Int) -> Int {
             a + b //no need to type return
        }
        
        func multiplicationFormula( a: Int, b : Int) -> Int{
            return a * b
        }
        
        func calculation(fourmula : ( Int, Int) -> Int) -> Int {
            
            let a = 10
            let b = 20
            return fourmula(a,b)
            
        }
        
        calculation(fourmula: additionFormula)
        
        
        
        // assign funciton to variable
        
        let cal : (( Int, Int) -> Int) -> Int = calculation
        print(cal(additionFormula))
        
        // function that returns fucntion
        func randomFormula() -> ( Int, Int) -> Int{
            let isTrue = Bool.random()
            if isTrue{
                return additionFormula(a:b:)
            }else{
                return multiplicationFormula(a:b:)
            }
        }
        
        print(calculation(fourmula: randomFormula()))
        
        
// p26 how to read a function in a documentation - UIButton
        
        
    
    // Closure
    // nameless fucntion - can check on earlier example as fuction are being passed in parameter
     
        calculation(fourmula: additionFormula(a:b:))
        calculation(fourmula: { ( value1, value2) -> Int in
            return value1 - value2
        })

        func minus(a:Int, b:Int) -> Int{
            return a - b
        }
        calculation(fourmula: minus)

//        ---
        
        print(calculation(fourmula: { ( value1, value2) -> Int in
            return ((value1 * value2) + value2) - value1
        }))
 
        
        // shorthand - no return type
        
        print(calculation(fourmula: { ( value1, value2) in
            return ((value1 * value2) + value2) - value1
        }))


        // shorthand - no paramthesis ( )
        
        print(calculation(fourmula: { value1, value2 in
            return ((value1 * value2) + value2) - value1
        }))

        
        // shorthand - no defining parameter name  $0 , $1
        
        print(calculation(fourmula: {
            return (( $0 * $1) + $1) - $0
        }))
        
        
        // shorthand - trailing closure -> completion ကိုပြောတာ
        
        print(calculation {
            return (( $0 * $1) + $1) - $0
        })
        
//        self.present(UIViewController(), animated: true, completion: { })
        
        
        // shorthand - no return keyword ( fucntion )
        
        print(calculation { (( $0 * $1) + $1) - $0  })
        
        
        
    
    }
}






















