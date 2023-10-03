//
//  StockPriceObserver.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import Foundation

class StockPriceObserver: Observer {
    var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func update(subject: Subject) {
        if let stockPriceSubject = subject as? StockPriceSubject {
            print("Observer \(id): The stock price of has changed to \(stockPriceSubject.stockPrice)")
        }
    }
}
