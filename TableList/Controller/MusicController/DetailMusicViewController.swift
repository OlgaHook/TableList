//
//  DetailMusicViewController.swift
//  TableList
//
//  Created by olga.krjuckova on 03/08/2021.
//

import UIKit

class DetailMusicViewController: UIViewController {
    
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var trackImageView: UIImageView!
    
//create var song of Song class
    var song : Song!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if song != nil {
    //we'll put on trackImage image and it will be UIimage with name song.cover
    //Not using index bcs passing only 1 song
            
            trackImageView.image = UIImage(named: song.albumCover)
     //the same for trackNameLabel, additional song.album
            
            trackNameLabel.text = song.track + " " + song.album
     //in case, if trackNameLabel is too long
            trackNameLabel.numberOfLines = 0
            
            
            
        }
    }
    


}
