//
//  FactoryDesignPattern.swift
//  DesignPatternVGT
//
//  Created by admin on 30.09.2023.
//

import SwiftUI

struct FactoryDesignPattern: View {
    var body: some View {
        Text("FactoryDesignPattern")
            .onAppear() {
                let car = CarSelector.selectCar(passengers: 2)
                if let car = car {
                    print(car)
                }
                
                let carNew = CarSelector.selectCarNew(passengers: 8)
                if let carNew = carNew {
                    print(carNew)
                }
            }
    }
}

#Preview {
    FactoryDesignPattern()
}
