//
//  ViewControllertwo.swift
//  Module6
//
//  Created by Ryan Willson on 6/23/21.
//

import UIKit

class ViewControllertwo: UIViewController {

    var objects = Array.init(repeating: "hello", count: 1000000)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // weak, unowned, strong ??

        
        // Strong
//        DispatchQueue.main.asyncAfter(deadline: .now() + 10){
//            print(" object.count => \(self.objects.count)")
//        }
        
        // Weak
        DispatchQueue.main.asyncAfter(deadline: .now() + 10 ) { [weak self] in
            guard let this = self else{
                print(" self is already removed from memory")
                return
            }
          print(" object.count => \(self?.objects.count ?? 0 )")
//        print(" object.count => \(this.objects.count ?? 0 )")

        }
        
        // owned
//        DispatchQueue.main.asyncAfter(deadline: .now() + 10 ) { [unowned self] in
//            print(" object.count => \(self.objects.count)")
//        }
        
    }
    
//     memory က နေဖြတ်ရင် ခေါ်တာ
    deinit {
        print("viewcontrollertwo is gone!")
    }
  

}

 



