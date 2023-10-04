//
//  MainCoordinator.swift
//  DesignPatternVGT
//
//  Created by admin on 04.10.2023.
//

import Foundation
import SwiftUI

class MainCoordinator: ObservableObject, Coordinator {
    @Published var isActive = false
    
    func navigateToDetail() {
        isActive = true
    }
}
