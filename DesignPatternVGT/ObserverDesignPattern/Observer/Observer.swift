//
//  Observer.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import Foundation

protocol Observer: AnyObject {
    func update(subject: Subject)
}
