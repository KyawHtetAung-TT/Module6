//
//  ViewController.swift
//  Module6
//
//  Created by Ryan Willson on 6/13/21.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    





        // Creating an Array
        // String, Int, Double, Float, Object, Enum, Bool ...

        let sampleStirng : [String] = []
        let sampleStirng2 : Array<String> = Array()
        let sampleString3 : [String] = ["value1","value2"]
        let sampleStirng4 = ["value1","value2"]
        let sampleStirng5 : Any = ["value","value2",true]

        // inspecting an array isEmpty, count

        sampleStirng.isEmpty

        // Accessing Elements subscript, first, last

        sampleStirng4[0] // value1
        sampleStirng4[1] // vlaue2
        sampleStirng4[99] // Runtime Error - Index out of range
        sampleStirng4.first
        sampleStirng4.last

        // Adding Element subscript, append, insert

//        sampleStirng4.append("value3")  // ["value1","value2", "value3 "]

        var iphones = [String]()
        iphones.append("XS Max")
        print(iphones)  // ["XS Max"]
        iphones.append("XS Max Pro")
        print(iphones)  // ["XS Max","XS Max Pro"]
        iphones.append("Iphone 12 pro")
        print(iphones)  // ["XS Max","XS Max Pro","Iphone 12 pro"]

        iphones.insert("Iphone SE", at: 2)
        print(iphones)  // ["XS Max","XS Max Pro","Iphone SE","Iphone 12 pro"]


        // Combing Array +, +=, append

        var appleDevice = ["MacBook Pro","Imac Pro"]
//        appleDevice = appleDevice + iphones
        appleDevice += iphones
        print(appleDevice)   // ["XS Max","XS Max Pro","Iphone SE","Iphone 12 pro","MacBook Pro", "Imac Pro"]
        appleDevice.append(contentsOf: ["AirPod", "air pod max"])
        print(appleDevice)   // ["XS Max","XS Max Pro","Iphone SE","Iphone 12 pro","MacBook Pro", "Imac Pro","AirPod", "air pod max"]
                
        // updating elements
        
        appleDevice[0] = "iphone 11"
        
        print(appleDevice)   // ["iphone 11","XS Max Pro","Iphone SE","Iphone 12 pro","MacBook Pro", "Imac Pro","AirPod", "air pod max"]

        // Remove Element
        
        appleDevice.removeAll { data in
            if data == "XS Max Pro"{
                return true
            }else{
                return false
            }
        }
        print(appleDevice)
        // ["iphone 11","Iphone SE","Iphone 12 pro","MacBook Pro", "Imac Pro","AirPod", "air pod max"]
        
        
        // Finding Element - contains
        let ipodshuffle = appleDevice.contains("ipod shuffle")
        print(ipodshuffle) // false
        
        // Reordering array elements - sort(), reverse, shuffle
        
        
        let rubbish : [[Any]] = [[2,true,"5"], [1,["a","%", 3]], ["4", 4.0, false]]
        var numberOnly = [Int]()
        
        /**
         
         1). You are not allowed to create a new array.
         2). Print ( number only ) should be => [1,2,3,4,5]
         
         Hint
         1). to get sub array - one can use [] after [] for example, [0][1] - index 1 of index 0 of an array
         2). use forced type casting to convert type
         
         for example.
         let unknown  : Any = "80"
         print(unknown as! Int) //80
         print(unknown as! String) //"80"
         
         Note - (Optional) : feel free to use optional/ non-optional/ unwrapping/ wrapping, if you already know how.
         
         **/
                
        numberOnly.append(rubbish[0][0] as! Int)
        numberOnly.append(Int(rubbish[0][2] as! String) ?? 0 )

        numberOnly.append(rubbish[1][0] as! Int)
        numberOnly.append((rubbish[1][1] as! [Any]) [2] as! Int)
        
        numberOnly.append(Int(rubbish[2][0] as! String) ?? 0)
        
        print(numberOnly.sorted())
        
        
        // Creating a Set - not ordered , [1,2,3,4,5]
        
        let numberSet : Set<String> = ["1","2","3"]
        let numberSet2 = ["1","2","3"] // array<String> or [String]
        
        var numberSet3 = Set<String>()
        numberSet3.insert("4")
        
        // Accessing Elements
        
        //[1,2,3,4,5] - [0] => 1 | [1] => 2      array
        //[1,2,3,4,5] - [0] => 3 | [1] => 1      set data
        
        numberSet3.first
        
        for data in numberSet {
            print(data)
        }
        
        // adding element insert
        
        // [0] = 100 , insert(at: position , data :  )
        
        
        // Combing Sets - interaction, union, substracting, symmetice
        
        let firstQuarter : Set<String> = ["jan","feb","march"]
        let SecondQuarter : Set<String> = ["april","may","june","march"]
        
        var halfyear = firstQuarter.union(SecondQuarter) // ["jan","feb","march","april","may","june"]
                                                // order can't be the same
        
        // removing Element - remove
        
        halfyear.remove("jan")
        halfyear.remove(at: <#T##Set<String>.Index#>)
        halfyear.first
        
        // finding Element - contain
        
        halfyear.contains("feb")
        
        // Sort Element - sorted
        
        halfyear.sorted()
        
        
        
        // Creating a dictionary - unordered, unique
        
        var sampleDictionary : Dictionary<String, String> = Dictionary<String, String>()
        
        var sampleDictionary2 : [String:String] = ["key":"value","key1":"value"]
        
        
        // empty Dictionary
        
        var emptyDictionary : [String : String] = [:]
        
        
        
        
        
        
        
        
        
        
        
            }
            
        }
