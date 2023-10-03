//
//  IteratorDesignPattern.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import SwiftUI

struct IteratorDesignPattern: View {
    var body: some View {
        Text("Iterator Design Pattern")
            .onAppear() {
                let playlist = Playlist()
                
                playlist.addSong(Song(title: "Song 1", artist: "Artist 1"))
                playlist.addSong(Song(title: "Song 2", artist: "Artist 2"))
                playlist.addSong(Song(title: "Song 3", artist: "Artist 3"))
                
                if let iterator = playlist.createIterator() {
                    print("Now playlist:")
                    while let song = iterator.next() {
                        print("\(song.title) by \(song.artist)")
                    }
                }
            }
    }
}

#Preview {
    IteratorDesignPattern()
}
