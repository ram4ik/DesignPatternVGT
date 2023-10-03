//
//  StockPriceSubject.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import Foundation

class StockPriceSubject: Subject {
    var observers: [Observer] = []
    var stockPrice: Double = 0.0
    var stockName: String
    
    init(name: String) {
        self.stockName = name
    }
    
    func addObserver(observer: Observer) {
        observers.append(observer)
    }
    
    func removeObserver(observer: Observer) {
        if let idx = observers.firstIndex(where: { $0 === observer }) {
            observers.remove(at: idx)
        }
    }
    
    func notifyObservers() {
        for observer in observers {
            observer.update(subject: self)
        }
    }
    
    func setStockPrice(price: Double) {
        stockPrice = price
        notifyObservers()
    }
}
