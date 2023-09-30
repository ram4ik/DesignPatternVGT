//
//  ShoppingCart.swift
//  DesignPatternVGT
//
//  Created by admin on 30.09.2023.
//

import Foundation

// Context
class ShoppingCart {
    private var paymentStrategy: PaymentStrategy?
    
    func setPaymentStrategy(strategy: PaymentStrategy) {
        self.paymentStrategy = strategy
    }
    
    func checkout(amount: Float) {
        paymentStrategy?.pay(amount: amount)
    }
}
