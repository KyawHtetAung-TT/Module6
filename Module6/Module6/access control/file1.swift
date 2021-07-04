//
//  file1.swift
//  Module6
//
//  Created by Ryan Willson on 6/22/21.
//

import Foundation


typealias Gram1 = Int
class Coffee1 {

//  most control >   - opne - public - intenal - fileprivae - pirvate   < less control
    
    // declare with private and can't reassign and use this variable
    // declare wiht fileprivate, can only use in this file
    // without declaring is internal
    // open and public are module level access control
    
    fileprivate var espresso1 : Gram1
    private var milkform1 : Gram1
    private var steamedmilk1 : Gram1
    private var hotchocolate1 : Gram1

    init(espresso1 : Gram1, milkform1 : Gram1, steamedmilk1 : Gram1, hotchocolate1 : Gram1) {

        self.espresso1 = espresso1
        self.milkform1 = milkform1
        self.steamedmilk1 = steamedmilk1
        self.hotchocolate1 = hotchocolate1

    }

}
extension Coffee1{
    
    // computed instance property
    var espressoPresent : Float{
        let totalGram = self.espresso1 + self.milkform1 + self.steamedmilk1 + self.hotchocolate1
        return Float((self.espresso1/totalGram) * 100)
    }
    
    func brew(){
        
        if self.espresso1 == self.milkform1 &&
            self.espresso1 == self.steamedmilk1{
            print("Here is your cappucino")
        }else{
            //...
            // brew other coffee
            print("Unknow Drink. Pleas contact your brista.")
        }
        
    }
    func makeCappucino(){
        let drink = Coffee1(espresso1: 100, milkform1: 100, steamedmilk1: 100, hotchocolate1: 0)
        drink.brew() //Here is your cappucino
    }
    
}
func morningCoffee1(){
    
    let coffee = Coffee1(espresso1: 100, milkform1: 100, steamedmilk1: 100, hotchocolate1: 0)
    coffee.brew() // here si your cappucino
    
    let coffee2 = Coffee1(espresso1: 100, milkform1: 100, steamedmilk1: 100, hotchocolate1: 0)
//    coffee2.espresso1 = 0 // declare with private, so can't reassign
    coffee2.brew() // unknown drink. please contact your brista
    
}
