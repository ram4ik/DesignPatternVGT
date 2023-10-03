//
//  IndividualEmployee.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import Foundation

class IndividualEmployee: Employee {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func display() {
        print("Employee: \(name)")
    }
}
