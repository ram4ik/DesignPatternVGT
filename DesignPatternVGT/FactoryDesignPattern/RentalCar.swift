//
//  RentalCar.swift
//  DesignPatternVGT
//
//  Created by admin on 30.09.2023.
//

import Foundation

func createRentalCar(passenger: Int) -> String? {
    var car: RentalCarProtocol?
    
    switch passenger {
    case 0...1:
        car = Sports()
    case 2...3:
        car = Compact()
    case 4...8:
        car = SUV()
    case 9...14:
        car = Minivan()
    default:
        car = nil
    }
    return car?.name
}
