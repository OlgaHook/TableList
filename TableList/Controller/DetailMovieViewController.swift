//
//  DetailMovieViewController.swift
//  TableList
//
//  Created by olga.krjuckova on 06/08/2021.
//

import UIKit

class DetailMovieViewController: UIViewController {
    @IBOutlet weak var detailMovieView: UIImageView!
   
    @IBOutlet weak var detailMovieLabel: UILabel!
    
    var movie : Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if movie != nil {
            
                detailMovieView.image = UIImage(named: movie.filmPoster)
                detailMovieLabel.text = movie.filmTitle
                detailMovieLabel.numberOfLines = 0
                
            }
        }
    }
    

   
