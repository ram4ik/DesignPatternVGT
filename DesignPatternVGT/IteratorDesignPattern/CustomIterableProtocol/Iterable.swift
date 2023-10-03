//
//  Iterable.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import Foundation

protocol Iterable {
    associatedtype Element
    func createIterator() -> Iterator<Element>?
}
