//
//  Waiter.swift
//  DesignPatternVGT
//
//  Created by admin on 02.10.2023.
//

import Foundation

class Waiter {
    private var command: Command?
    
    func takeOrder(command: Command) {
        self.command = command
    }
    
    func sendOrderToChef() {
        command?.execute()
    }
    
    func cancelOrder(orderId: Int) {
        command?.cancelOrder(id: orderId)
    }
}
