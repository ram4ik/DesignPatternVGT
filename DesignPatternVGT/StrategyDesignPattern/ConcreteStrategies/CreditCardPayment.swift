//
//  CreditCardPayment.swift
//  DesignPatternVGT
//
//  Created by admin on 30.09.2023.
//

import Foundation

// Concrete Strategies
class CreditCardPayment: PaymentStrategy {
    func pay(amount: Float) {
        // Logic for credit card payment
        print("Paid \(amount) via Credit Card.")
    }
}
