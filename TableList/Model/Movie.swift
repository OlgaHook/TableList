//
//  Movie.swift
//  TableList
//
//  Created by olga.krjuckova on 03/08/2021.
//

import Foundation

struct Movie {
    
    let filmTitle : String
    let filmYear : String
    let filmPoster : String
    
    static func createMovie() -> [Movie]{
        var movies : [Movie] = []
        
        let filmTitles  = DataManagerFilm.sharedFilm.filmTitle
        let filmYears = DataManagerFilm.sharedFilm.filmYear
        let filmPosters = DataManagerFilm.sharedFilm.filmPoster
        
        
        for index in 0..<filmTitles.count {
            let movie = Movie(filmTitle: filmTitles[index], filmYear: filmYears[index], filmPoster: filmPosters[index])
            movies.append(movie)
            
        }
    
    return movies
    }
    
}
