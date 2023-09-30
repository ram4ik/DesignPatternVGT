//
//  CarSelector.swift
//  DesignPatternVGT
//
//  Created by admin on 30.09.2023.
//

import Foundation

class CarSelector {
    
    class func selectCar(passengers: Int) -> String? {
        var car: RentalCarProtocol?
        
        switch passengers {
        case 0...2:
            car = Sports()
        case 3...4:
            car = Compact()
        case 5...7:
            car = SUV()
        case 8...10:
            car = Minivan()
        default:
            car = nil
        }
        
        return car?.name
    }
    
    class func selectCarNew(passengers: Int) -> String? {
        return createRentalCar(passenger: passengers)
    }
}
