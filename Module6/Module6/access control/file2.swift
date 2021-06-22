//
//  file1.swift
//  Module6
//
//  Created by Ryan Willson on 6/22/21.
//

import Foundation
import  UIKit

typealias Gram2 = Int
class Coffee2 {

    // declare with private and can't reassign and use this variable
    
    private var espresso2 : Gram2
    private var milkform2 : Gram2
    private var steamedmilk2 : Gram2
    private var hotchocolate2 : Gram2

    init(espresso2 : Gram2, milkform2 : Gram2, steamedmilk2 : Gram2, hotchocolate2 : Gram2) {

        self.espresso2 = espresso2
        self.milkform2 = milkform2
        self.steamedmilk2 = steamedmilk2
        self.hotchocolate2 = hotchocolate2

    }

}
extension Coffee2{
    
    // computed instance property
    var espressoPresent : Float{
        let totalGram = self.espresso2 + self.milkform2 + self.steamedmilk2 + self.hotchocolate2
        return Float((self.espresso2/totalGram) * 100)
    }
    
    func brew(){
        
        if self.espresso2 == self.milkform2 &&
            self.espresso2 == self.steamedmilk2{
            print("Here is your cappucino")
        }else{
            //...
            // brew other coffee
            print("Unknow Drink. Pleas contact your brista.")
        }
        
    }
    func makeCappucino(){
        let drink = Coffee2(espresso2: 30, milkform2: 30, steamedmilk2: 30, hotchocolate2: 0)
        drink.brew() //Here is your cappucino
    }
    
}
func morningCoffee2(){
    
    let coffee = Coffee2(espresso2: 100, milkform2: 100, steamedmilk2: 100, hotchocolate2: 0)
    coffee.brew() // here si your cappucino
    
    let coffee2 = Coffee2(espresso2: 100, milkform2: 100, steamedmilk2: 100, hotchocolate2: 0)
//    coffee2.espresso = 0 // declare with private, so can't reassign
    coffee2.brew() // unknown drink. please contact your brista
    
}
