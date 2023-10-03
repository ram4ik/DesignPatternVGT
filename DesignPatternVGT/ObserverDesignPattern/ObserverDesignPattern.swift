//
//  ObserverDesignPattern.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import SwiftUI

struct ObserverDesignPattern: View {
    var body: some View {
        Text("Observer Design Pattern")
            .onAppear() {
                let stockPriceSubject = StockPriceSubject(name: "APPL")
                let observer1 = StockPriceObserver(id: "1")
                let observer2 = StockPriceObserver(id: "2")
                
                stockPriceSubject.addObserver(observer: observer1)
                stockPriceSubject.addObserver(observer: observer2)
                
                stockPriceSubject.setStockPrice(price: 100.0)
            }
    }
}

#Preview {
    ObserverDesignPattern()
}
