//
//  Pool.swift
//  DesignPatternVGT
//
//  Created by admin on 01.10.2023.
//

import Foundation

class Pool<T> {
    private var data = [T]()
    
    private let arrQueue = DispatchQueue(label: "arrQueue")
    
    init(items: [T]) {
        data.reserveCapacity(data.count)
        
        for item in items {
            data.append(item)
        }
    }
    
    func getFromPool() -> T? {
        var result: T?
        
        if self.data.count > 0 {
            arrQueue.sync {
                result = self.data.remove(at: 0)
            }
        }
        
        return result
    }
    
    func returnToPool(item: T) {
        arrQueue.async {
            self.data.append(item)
        }
    }
}
