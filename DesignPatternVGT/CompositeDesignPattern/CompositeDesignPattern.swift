//
//  CompositeDesignPattern.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import SwiftUI

struct CompositeDesignPattern: View {
    var body: some View {
        Text("Composite Design Pattern")
            .onAppear() {
                let emp1 = IndividualEmployee(name: "John")
                let emp2 = IndividualEmployee(name: "Alice")
                
                let manager1 = Manager(name: "Bob")
                manager1.addSubordinate(emp1)
                manager1.addSubordinate(emp2)
                
                let emp3 = IndividualEmployee(name: "Eve")
                
                let manager2 = Manager(name: "Charlie")
                manager2.addSubordinate(manager1)
                manager2.addSubordinate(emp3)
                
                manager2.display()
            }
    }
}

#Preview {
    CompositeDesignPattern()
}
