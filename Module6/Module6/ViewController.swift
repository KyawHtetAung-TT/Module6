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

        sampleStirng4.append("value3")  // ["value1","value2", "value3 "]

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
        d
        

                

            }
            
        }
