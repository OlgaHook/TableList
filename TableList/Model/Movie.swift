//
//  Movie.swift
//  TableList
//
//  Created by olga.krjuckova on 03/08/2021.
//

import Foundation

struct Film {
    
    let movie : String
    let movieYear : String
    let movieCover : String
    
    static func createFilm() -> [Film]{
        
        var films : [Film] = []
        
        let movies = DataManagerMovie.sharedMovie.movie
        let movieYears = DataManagerMovie.sharedMovie.movieYear
        let movieCovers = DataManagerMovie.sharedMovie.movieCover
        
        for index in 0..<movies.count {
            let film = Film(movie: movies[index], movieYear: movieYears[index], movieCover: movieCovers[index])
            films.append(film)
            
        }
        
    
        return films
        
    }
    
}
