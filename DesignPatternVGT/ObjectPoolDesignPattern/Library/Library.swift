//
//  Library.swift
//  DesignPatternVGT
//
//  Created by admin on 01.10.2023.
//

import Foundation

final class Library {
    private var books: [Book]
    private let pool: Pool<Book>
    
    static let shared = Library(stockLevel: 2)
    
    private init(stockLevel: Int) {
        books = [Book]()
        
        for count in 0...(stockLevel - 1) {
            books.append(Book(author: "John Appleseed",
                              title: "Design Patterns",
                              stockNumber: count,
                              reader: "",
                              checkoutCount: 0))
        }
        
        pool = Pool(items: books)
    }
    
    func checkoutBook(reader: String) -> Book? {
        let book = Library.shared.pool.getFromPool()
        book?.reader = reader
        book?.checkoutCount += 1
        return book
    }
    
    func returnBook(book: Book) {
        book.reader = nil
        Library.shared.pool.returnToPool(item: book)
    }
    
    func printReport() {
        for book in Library.shared.books {
            print("Book - \(String(describing: book.stockNumber))")
            print("Checked out - \(book.checkoutCount) times")
            if book.reader != nil {
                print("Checked out to \(book.reader!)")
            } else {
                print("In stock!")
            }
        }
    }
}
