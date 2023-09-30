//
//  ContentView.swift
//  DesignPatternVGT
//
//  Created by admin on 30.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Strategy Design Pattern") {
                StrategyDesignPattern()
            }
            NavigationLink("Factory Design Pattern") {
                FactoryDesignPattern()
            }
        }
    }
}

#Preview {
    ContentView()
}
