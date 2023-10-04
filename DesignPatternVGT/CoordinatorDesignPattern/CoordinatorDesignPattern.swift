//
//  CoordinatorDesignPattern.swift
//  DesignPatternVGT
//
//  Created by admin on 04.10.2023.
//

import SwiftUI

struct CoordinatorDesignPattern: View {
    @StateObject var coordinator = MainCoordinator()
        
    var body: some View {
         
        VStack {
            Text("Coordinator Design Pattern")
                .font(.title)
                .padding()
            
            NavigationLink("Go to Detail", destination: DetailView(coordinator: coordinator))
        }
    }
}

#Preview {
    CoordinatorDesignPattern()
}
