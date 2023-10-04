//
//  DetailView.swift
//  DesignPatternVGT
//
//  Created by admin on 04.10.2023.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject var coordinator: MainCoordinator
    
    var body: some View {
        VStack {
            Text("Detail View")
                .font(.title)
                .padding()
            
            Button("Go Back") {
                presentationMode.wrappedValue.dismiss()
            }
        }
        .navigationTitle("Detail")
    }
}
