//
//  Subject.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import Foundation

protocol Subject {
    var observers: [Observer] { get set }
    func addObserver(observer: Observer)
    func removeObserver(observer: Observer)
    func notifyObservers()
}
