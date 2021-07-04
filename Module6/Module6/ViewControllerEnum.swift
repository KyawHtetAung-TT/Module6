//
//  ViewControllerEnum.swift
//  Module6
//
//  Created by Ryan Willson on 6/20/21.
//

import UIKit


class ViewControllerEnum: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        morningCoffee1()
        
        // Do any additional setup after loading the view.
    }
    
    /*
     - Defaul Syntax
     - with switch statement
     - raw value
     - associated values
     - first class type ( Int, Double, String )
     */
    
    // enum basie built
    
//    enum Name {
//        case value1
//        case value2
//        case value3
//    }
//
//    func getIphone12SeriesPrices(variant :String) -> Int{
//        switch variant {
//        case "iphone 12 mini":
//            return 789
//        case "iphone 12":
//            return 845
//        case "iphone 12 pro":
//            return 985
//        case "iphone 12 pro max":
//            return 1097
//        default:
//            return -1
//        }
//
//        func buy(){
//
//            getIphone12SeriesPrices(variant: "iphone 12 mini") // 789
//            getIphone12SeriesPrices(variant: "iphone 12 MINI") // -1
//        }
//
//    }
    
    // transform to enum
    
//    enum iphone12Model : String {
//        case iphone12Mini = "ipone 12 Mini"
//        case iphone12
//        case iphone12Pro
//        case iphone12ProMax
//    }
//    @discardableResult
//    func getIphone12SeriesPrices(variant :iphone12Model) -> Int{
//        switch variant {
//        case iphone12Model.iphone12Mini:
//            return 789
//        case iphone12Model.iphone12:
//            return 845
//        case .iphone12Pro:
//            return 985
//        case .iphone12ProMax:
//            return 1097
//
//            // no need to add default process in enum
////        default:
////            return -1
//        }
    enum StorageOption {
        case _64GB
        case _128GB
        case _256GB
    }
    enum Color {
        case blue
        case white
        case black
        case red
    }
    
        enum iphone12ModelV2{
            case iphone12Mini (StorageOption, Color)
            case iphone12
            case iphone12Pro
            case iphone12ProMax
        }
        @discardableResult
        func getIphone12SeriesPricesV2(variant :iphone12ModelV2) -> Int{
            switch variant {
            case iphone12ModelV2.iphone12Mini (let Storage, let Color) :
                if Color == .red { return -1}
                if Storage == ._64GB{
                    return 789
                }else if Storage == ._128GB{
                    return 876
                }else if Storage == ._256GB{
                    return 976
                }else{
                    return -1
                }
                
            case iphone12ModelV2.iphone12:
                return 845
            case .iphone12Pro:
                return 985
            case .iphone12ProMax:
                return 1097

                // no need to add default process in enum
    //        default:
    //            return -1
            }
        
//        func buy(){
//
//            getIphone12SeriesPrices(variant: iphone12Model.iphone12Mini) // 789
//            getIphone12SeriesPrices(variant: iphone12Model.iphone12) // 845
//
//            iphone12Model.iphone12Mini.rawValue
//            iphone12Model.iphone12Pro.rawValue     // print existing value if you dont assign
//
//            }
       
            
            func buy(){
                getIphone12SeriesPricesV2(variant: .iphone12Mini(StorageOption._128GB, Color.blue))
                
            }
            
    }
    }
        
//MARK: - UITableViewDataSource

enum HomeScreenSectionType : Int {
    case popularMatch = 0
    case popularLeague = 1
    case sportCategories = 2
}

let HomeScreenItem : [HomeScreenSectionType] = [
    .popularMatch,
    .popularLeague,
    .sportCategories,
]

extension ViewControllerEnum : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case HomeScreenSectionType.popularMatch.rawValue:
            let cellPopularMatch = UITableViewCell()
            return cellPopularMatch
        case HomeScreenSectionType.popularLeague.rawValue:
            let cellPopularLeague = UITableViewCell()
            return cellPopularLeague
        case HomeScreenSectionType.sportCategories.rawValue:
            let cellSportCategories = UITableViewCell()
            return cellSportCategories
            
        default:
            return UITableViewCell()
        }
        
    }
    
}

/*
 new functionality to an existing
 
 1) class
 2) Structure
 3) enumeration
 4) protocol
 
 - adding computed instance properties and computed type properties
 - Define instance methods and type methods
 - provide new initializers
 - Define subscript
 - Define and use new nested types
 - Make an existing type conform to a protcol
 */

typealias Gram = Int
private class Coffee {

    // declare with private and can't reassign and use this variable
    
     var espresso : Gram
     var milkform : Gram
     var steamedmilk : Gram
     var hotchocolate : Gram

    init(espresso : Gram, milkform : Gram, steamedmilk : Gram, hotchocolate : Gram) {

        self.espresso = espresso
        self.milkform = milkform
        self.steamedmilk = steamedmilk
        self.hotchocolate = hotchocolate

    }

}

extension Coffee{
    
    // computed instance property
    var espressoPresent : Float{
        let totalGram = self.espresso + self.milkform + self.steamedmilk + self.hotchocolate
        return Float((self.espresso/totalGram) * 100)
    }
    
    func brew(){
        
        if self.espresso == self.milkform &&
            self.espresso == self.steamedmilk{
            print("Here is your cappucino")
        }else{
            //...
            // brew other coffee
            print("Unknow Drink. Pleas contact your brista.")
        }
        
    }
    func makeCappucino(){
        let drink = Coffee(espresso: 30, milkform: 30, steamedmilk: 30, hotchocolate: 0)
        drink.brew() //Here is your cappucino
    }
    
}

func showArrayCount(){
    
    let fruit = ["Apple","Orange","Banan","Limon","Pineapple","Sausage","Ginger"]
    let _ = fruit.isEmpty // false
    let _ = fruit.isnotEmpty() // true
}

extension Array{
    func isnotEmpty() -> Bool{
        return count > 0
    }
}

enum DebugTag : String {
    case info
    case warning
    case debug
    case error
    
}

// extension Protocol
protocol DebugHelper {
    func printWithTag(tag : DebugTag, message : String)
}

// no need to conform in view controller if you exten this
extension DebugHelper{
    func printWithTag(tag : DebugTag , message : String){
        print(" (\(tag.rawValue.uppercased()) : \(message)")
    }

}

class ViewControllerEnum1 : UIViewController, DebugHelper {

    // not necesary to conform

    //    func printWithTag(tag: DebugTag, message: String) {
//        <#code#>
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        printWithTag(tag: .error, message: " Something seems off ...")
        printWithTag(tag: .debug, message: "Everything is ok")
        
    }
    
}
