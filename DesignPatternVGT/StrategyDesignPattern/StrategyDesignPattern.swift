//
//  StrategyDesignPattern.swift
//  DesignPatternVGT
//
//  Created by admin on 30.09.2023.
//

import SwiftUI

// Client Code
struct StrategyDesignPattern: View {
    var body: some View {
        Text("Strategy Design Pattern")
            .onAppear() {
                
                let cart = ShoppingCart()

                cart.setPaymentStrategy(strategy: CreditCardPayment())
                cart.checkout(amount: 100.0)

                cart.setPaymentStrategy(strategy: PayPalPayment())
                cart.checkout(amount: 50.0)
            }
    }
}

#Preview {
    StrategyDesignPattern()
}
