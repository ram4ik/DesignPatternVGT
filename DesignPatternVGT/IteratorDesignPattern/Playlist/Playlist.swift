//
//  Playlist.swift
//  DesignPatternVGT
//
//  Created by admin on 03.10.2023.
//

import Foundation

class Playlist: Iterable {
    typealias Element = Song
    private var songs: [Song] = []
    
    func addSong(_ song: Song) {
        songs.append(song)
    }
    
    func createIterator() -> Iterator<Song>? {
        return Iterator(elements: songs)
    }
}
