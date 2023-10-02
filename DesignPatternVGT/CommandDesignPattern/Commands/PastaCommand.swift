//
//  PastaCommand.swift
//  DesignPatternVGT
//
//  Created by admin on 02.10.2023.
//

import Foundation

class PastaCommand: Command {
    
    private let chef: Chef
    
    init(chef: Chef) {
        self.chef = chef
    }
    
    func execute() {
        chef.preparePaste()
    }
    
    func cancelOrder(id: Int) {
        print("Cancelling the Order Id: \(id) for Pasta")
    }
}
