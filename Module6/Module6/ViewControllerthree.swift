//
//  ViewControllerthree.swift
//  Module6
//
//  Created by Ryan Willson on 6/21/21.
//

import UIKit

class ViewControllerthree: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    

}



/*
 
 Error Handling
 ----
 
 throwing
 catching
 propagating
 
 
 
 types of error
 -----
 
 var name : String?
 print(name!) // unexpectedly found nil found when unwrapping,
 
 var furits = [String]()
 print(fruint[0]) // index out of bounds
 
 let value : Int? = Int("Hello")  // nil
 
 So Many Way to Go Wrong
 
 - debugging / error tracing / error handling
 
 if error {
 
    // handle error1
 
 }else if error2 {
 
 // handle error2
 
}else if error3 {
 
 // handle error3
 
}else {
 
 // handle general error
 
 }
 
 
 
 */

func doAssignment(_ studentName : String) -> String{
    
    // business logic
    // ...
    
    return "done"

}

func checkAssignment(){
    
    let result = doAssignment("mgmg")
    switch result {
    
    case "done":
        print("done")
        break;
        
    case "not yet":
        print("not yet")
        break;
        
    case "unfinshed":
        print("unfinished")
        break;
        
        
    default:
        print("show assignment")
        break;
    }
    
    
}

/*

// fetching a file form hard disk


func getFileFormHardDisk(){
    
    let data1 = fetchFile("Wrong-path/sub-path/item")
    
    
    // Scenerio - 1
    print(data1)    // wrong path
    
    // Scenerio - 2
    print(data1)    // file doesn't exit
    
    // Scenerio - 3
    print(data1)    // permission denied
    
    if data != nil{
        // has data
    }else{
        // has no data
    }
    
    
}

*/



// but in real, not string returns

enum StudentAssgnmentStatus {
    case completed
    case inProgress
    case notDone(String)
}

func doAssignment2(_ studentName : String) -> StudentAssgnmentStatus{
    
    
    //business logic
    //...
    return StudentAssgnmentStatus.notDone("feeling not well")
    
}

func checkAssignment2(){
    
    let result = doAssignment2("mgmg")
    switch result {
    case .completed:
        print("done")
        break;
        
    case .inProgress:
        print("not yet")
        break;
        
    case .notDone(let reason):
        print("unfinished")
        break;
        
    default:
        print("show assignment")
        break;
    }
    
}


// Using throw

enum StudnetAssignmentStatusError : Error{
    
    case inProgress
    case notDone(String)
    
}


func doAssignment3(_ studentName : String) throws -> String{
    
    // business logic
    //...
    
    throw StudnetAssignmentStatusError.notDone("feeling not well")
}


func checkAssignment3(){
    
    // 1 - do catch
    do{
        //2 - try keyword
        let result = try doAssignment3("mgmg")
        print(result)
    }
    //3 - chatch errors
    catch StudnetAssignmentStatusError.inProgress{
        print("how many left")
    }
    
    catch StudnetAssignmentStatusError.notDone(let reason){
        print(reason)
    }
    
    /*
     more catches if available
     */
    
    catch{
        print(error.localizedDescription)
    }
    
    
}

// handling throwing fucntion as Optional

func handleThrowingFunction(){
    let result : String? = try? doAssignment3("mgmg")
    print(result ?? "no value")
}

// Handling throwing function - by force unwrapping
func handlingThrowingFunctionV2(){
    let result : String = try! doAssignment3("mgmg")
    print(result)
}



// propagating Exceptio / Error
func handlThrowingFuctionV3() throws{
    let result = try doAssignment3("mgmg")
    print(result)
}

func handlingPropagatedException() throws{
    let result = try doAssignment3("mgmg")
    print(result)
}

func handlingPropagatedException1(){
    
    do{
        let result = try handlThrowingFuctionV3()
        print(result)
    }catch{}
}




func throwingFunctionInpartice(){
    struct TestData : Encodable { }
    
    do{
        let _ = try JSONEncoder().encode(TestData())
    }
    catch EncodingError.invalidValue( let _ , let context){
        print(context.debugDescription)
    }
    
    catch{ }
    
}


// rethrow
enum LuggageCheckError : Error{
    case illegalItem(String)
}

func checkLuggage(data: String) throws -> String{
    
    if data == " Cocain "{
        throw LuggageCheckError.illegalItem("buying cocain is agaainst the law")
    }else{
        return data
    }
    
}

func rethrowFunctionPractice(){
    
    let luggage = ["Knife","shirt","cocanie","shoe","book"]
    
    do {
        let legalItems : [String?] = try luggage.map(checkLuggage)
        print(legalItems) // print(legalItems!)
    }catch let LuggageCheckError.illegalItem(reason) {
        print(reason)
    }catch StudnetAssignmentStatusError.inProgress{
        print("totally irrevalent error check")
    }catch{
        print(error.localizedDescription)
    }
    
    func checkLuggaeByCorruptOffice(data : String) -> String{
        print("you are good to go")
        return data
        
    }
    
    luggage.map(checkLuggaeByCorruptOffice(data:))
    
}

/*
 error handling basic
 error throw/catch/propagate/rethrows
 creating error for throwing
 */














