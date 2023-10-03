//
//  Iterator.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import Foundation

class Iterator<Element>: IteratorProtocol {
    private let elements: [Element]
    private var currentIndex = 0
    
    init(elements: [Element]) {
        self.elements = elements
    }
    
    func hasNext() -> Bool {
        return currentIndex < elements.count
    }
    
    func next() -> Element? {
        guard hasNext() else { return nil }
        let nextElement = elements[currentIndex]
        currentIndex += 1
        return nextElement
    }
}
