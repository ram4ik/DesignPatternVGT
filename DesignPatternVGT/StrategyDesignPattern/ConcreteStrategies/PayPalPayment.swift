//
//  PayPalPayment.swift
//  DesignPatternVGT
//
//  Created by admin on 30.09.2023.
//

import Foundation

// Concrete Strategies
class PayPalPayment: PaymentStrategy {
    func pay(amount: Float) {
        // Logic for PayPal payment
        print("Paid \(amount) via PayPal.")
    }
}
