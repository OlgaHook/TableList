//
//  DetailMovieViewController.swift
//  TableList
//
//  Created by olga.krjuckova on 03/08/2021.
//

import UIKit

class DetailMovieViewController: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    
    var film : Film!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        if film != nil {
            
            movieImageView.image = UIImage(named: film.movieCover)
     
            movieNameLabel.text = film.movie + " " + film.movieYear
     //in case, if trackNameLabel is too long
            movieNameLabel.numberOfLines = 0
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
