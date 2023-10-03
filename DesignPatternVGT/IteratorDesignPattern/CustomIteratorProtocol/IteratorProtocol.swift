//
//  IteratorProtocol.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import Foundation

protocol IteratorProtocol {
    associatedtype Element
    func hasNext() -> Bool
    func next() -> Element?
}
