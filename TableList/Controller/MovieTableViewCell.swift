//
//  MovieTableViewCell.swift
//  TableList
//
//  Created by olga.krjuckova on 04/08/2021.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var filmPosterCell: UIImageView!
    
    @IBOutlet weak var filmTitleCell: UILabel!
    
    var movie : Movie!
    
   /* func viewDidLoad(){
        
        if movie != nil {

            filmPosterCell.image = UIImage(named: movie.filmPoster)
            filmTitleCell.text = movie.filmTitle
            filmTitleCell.numberOfLines = 0
            
        }
    }
    */
}
