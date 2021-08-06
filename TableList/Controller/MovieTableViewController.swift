//
//  MovieTableViewController.swift
//  TableList
//
//  Created by olga.krjuckova on 05/08/2021.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var movieList = [
        "Brokeback Mountain (2005)",
        "Happy as Lazzaro (2018)",
        "The Incredibles (2004)",
        "Waiting for Happiness (2002)",
        "The Souvenir (2019)",
        "Ted (2012)",
        "Gangs of Wasseypur (2012)",
        "Wuthering Heights (2011)",
        "Leave No Trace (2018)",
        "Behind the Candelabra (2013)",
            
    ]
    
    
    var movies  = Movie.createMovie()
    var movie : Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
 */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell()}
        
        let film = movies[indexPath.row]

        cell.filmPosterCell.image = UIImage(named: film.filmPoster)
        cell.filmTitleCell.text = film.filmTitle
        
        //cell.movieImage.image = UIImage(named: film.movieCover)
        //cell.movieNameLabel.text = film.movie
        
        return cell

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow {
        // Get the new view controller using segue.destination

            
            
            let movieVC = segue.destination as! DetailMovieViewController
        // Pass the selected object to the new view controller.
            movieVC.movie = movies[indexPath.row]
    }

}
}
