//
//  NewMovie.swift
//  TableList
//
//  Created by olga.krjuckova on 03/08/2021.
//

import Foundation

struct NewFilm {
    
    let newMovie : String
    let newMovieYear : String
    let newMovieCover : String
    
    static func newCreateFilm() -> [NewFilm]{
        
        var newFilms : [NewFilm] = []
        
        let newMovies = NewDataManagerMovie.newSharedMovie.newMovie
        let newMovieYears = NewDataManagerMovie.newSharedMovie.newMovieYear
        let newMovieCovers = NewDataManagerMovie.newSharedMovie.newMovieCover
        
        for index in 0..<newMovies.count {
            let newFilm = NewFilm(newMovie: newMovies[index], newMovieYear: newMovieYears[index], newMovieCover: newMovieCovers[index])
            newFilms.append(newFilm)
            
        }
    
        return newFilms
        
    }
    
}
