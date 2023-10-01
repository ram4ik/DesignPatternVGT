//
//  Book.swift
//  DesignPatternVGT
//
//  Created by admin on 01.10.2023.
//

import Foundation

class Book {
    var author: String?
    var title: String?
    var stockNumber: Int?
    var reader: String?
    var checkoutCount: Int
    
    init(author: String? = nil, title: String? = nil, stockNumber: Int? = nil, reader: String? = nil, checkoutCount: Int) {
        self.author = author
        self.title = title
        self.stockNumber = stockNumber
        self.reader = reader
        self.checkoutCount = checkoutCount
    }
}
