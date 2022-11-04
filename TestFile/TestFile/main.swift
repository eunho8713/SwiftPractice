//
//  main.swift
//  TestFile
//
//  Created by 이은호 on 2022/11/04.
//

import Foundation

class SuperClass {
    var name: String = " 안녕 "
    
    init(name: String) {
        self.name = name
    }
    
    func printName() -> Void {
        print(name)
    }
}

let superClass = SuperClass(name: " 안녕못해 ")
superClass.printName()
