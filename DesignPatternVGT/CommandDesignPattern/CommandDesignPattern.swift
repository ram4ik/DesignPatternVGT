//
//  CommandDesignPattern.swift
//  DesignPatternVGT
//
//  Created by admin on 02.10.2023.
//

import SwiftUI

struct CommandDesignPattern: View {
    var body: some View {
        Text("Command Design Pattern")
            .onAppear() {
                let chef = Chef()
                let waiter = Waiter()
                
                // pasta order
                let pastaCommand = PastaCommand(chef: chef)
                waiter.takeOrder(command: pastaCommand)
                waiter.sendOrderToChef()
                waiter.cancelOrder(orderId: 1)
                
                // pizza order
                let pizzaCommand = PizzaCommand(chef: chef)
                waiter.takeOrder(command: pizzaCommand)
                waiter.sendOrderToChef()
                waiter.cancelOrder(orderId: 2)
            }
    }
}

#Preview {
    CommandDesignPattern()
}
