//
//  AppLogger.swift
//  DesignPatternVGT
//
//  Created by admin on 01.10.2023.
//

import Foundation

final class AppLogger {
    
    static let shared = AppLogger()
    
    private var data = [String]()
    private var arrSerialQueue = DispatchQueue(label: "arrSerialQueue")
    
    private init() {
        
    }
    
    func log(msg: String) {
        arrSerialQueue.sync {
            self.data.append(msg)
        }
    }
    
    func printLog() {
        for msg in data {
            print("Log is - \(msg)")
        }
    }
}
