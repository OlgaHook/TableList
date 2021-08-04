//
//  NewMovieTableViewCell.swift
//  TableList
//
//  Created by olga.krjuckova on 03/08/2021.
//

import UIKit

class NewMovieTableViewCell: UITableViewCell {

    @IBOutlet weak var newMovieImageView: UIImageView!
 
    @IBOutlet weak var newMovieLabel: UILabel!
   
    var newFilm : NewFilm!
    
    func viewDidLoad() {

        if newFilm != nil {
            
            newMovieImageView.image = UIImage(named: newFilm.newMovieCover)
     
            newMovieLabel.text = newFilm.newMovie + " " + newFilm.newMovieYear
    
           newMovieLabel.numberOfLines = 0
            
        }    }
    
    
    }
    
