//
//  Song.swift
//  TableList
//
//  Created by olga.krjuckova on 03/08/2021.
//

import Foundation

// Create a StructClass (class name starts from Capital letter).
// This new created StructClass need to be used it in New File, that will be created in Model with name DataManager )
// struct Song will be populated in our Table view

struct Song {
    
    //dont putting optionals, bcs all info is known (no any incoming data from outside)
    let track : String
    let album : String
    let albumCover : String
    
    static func createSong() -> [Song]{
        //var songs : [Song] = [] will be changed later
        var songs : [Song] = []
        
        //created let tracks, using previously class info Model->DataManager
        let tracks = DataManager.shared.track
        let albums = DataManager.shared.album
        let albumCovers = DataManager.shared.albumCover
        
        
        //to populate inside Song class -> create for each loop
        // index in Array starts from the 0 (first one)
        
        for index in 0..<tracks.count {
            let song = Song(track: tracks[index], album: albums[index], albumCover: albumCovers[index])
            songs.append(song)
            
        }
        
        
        
        return songs
        
    }
    
}



