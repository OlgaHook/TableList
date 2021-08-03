//
//  NewMovieTableViewController.swift
//  TableList
//
//  Created by olga.krjuckova on 03/08/2021.
//

import UIKit

class NewMovieTableViewController: UITableViewController {
    
    
    var newMovieList = [
        "NEW Brokeback Mountain (2005)",
        "NEW Happy as Lazzaro (2018)",
        "NEW The Incredibles (2004)",
        "NEW Waiting for Happiness (2002)",
        "NEW The Souvenir (2019)",
        "NEW Ted (2012)",
        "NEW Gangs of Wasseypur (2012)",
        "NEW Wuthering Heights (2011)",
        "NEW Leave No Trace (2018)",
        "NEW Behind the Candelabra (2013)",
    ]
    
    var newFilms = Film.createFilm()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newMovieList.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "newMovieCell", for: indexPath) as? NewMovieTableViewCell else {
            return UITableViewCell()
            
        }
        cell.newMovieLabel.text = newMovieList[indexPath.row]
        //cell.detailTextLabel?.text = newMovieList[indexPath.row]
        cell.newMovieImageView.image = UIImage(named: newMovieList[indexPath.row])
        

        //cell.newMovieLabel.text = ""
        //cell.newMovieImageView.image = UIImage(named: "")
        // Configure the cell...

        return cell
    }
   
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
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
        
    }
    

}
