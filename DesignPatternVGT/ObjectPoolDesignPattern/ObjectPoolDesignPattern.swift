//
//  ObjectPoolDesignPattern.swift
//  DesignPatternVGT
//
//  Created by admin on 01.10.2023.
//

import SwiftUI

struct ObjectPoolDesignPattern: View {
    var body: some View {
        Text("Object Pool Design Pattern")
            .onAppear() {
                let book = Library.shared.checkoutBook(reader: "Ramill")
                Library.shared.printReport()
                
                if let book = book {
                    Library.shared.returnBook(book: book)
                    Library.shared.printReport()
                }
            }
    }
}

#Preview {
    ObjectPoolDesignPattern()
}
