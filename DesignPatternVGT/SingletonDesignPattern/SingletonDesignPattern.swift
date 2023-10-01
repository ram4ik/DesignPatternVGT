//
//  SingletonDesignPattern.swift
//  DesignPatternVGT
//
//  Created by admin on 01.10.2023.
//

import SwiftUI

struct SingletonDesignPattern: View {
    var body: some View {
        Text("SingletonDesignPattern")
            .onAppear() {
                AppLogger.shared.log(msg: "log from Singleton")
                AppLogger.shared.printLog()
            }
    }
}

#Preview {
    SingletonDesignPattern()
}
