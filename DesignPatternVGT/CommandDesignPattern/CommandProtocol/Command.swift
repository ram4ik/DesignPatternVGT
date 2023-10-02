//
//  Command.swift
//  DesignPatternVGT
//
//  Created by admin on 02.10.2023.
//

import Foundation

protocol Command {
    func execute()
    func cancelOrder(id: Int)
}
