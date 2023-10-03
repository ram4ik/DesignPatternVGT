//
//  Manager.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import Foundation

class Manager: Employee {
    let name: String
    var subordinates: [Employee]
    
    init(name: String) {
        self.name = name
        self.subordinates = []
    }
    
    func addSubordinate(_ employee: Employee) {
        subordinates.append(employee)
    }
    
    func display() {
        print("Manager: \(name)")
        for subordinate in subordinates {
            subordinate.display()
        }
    }
}
