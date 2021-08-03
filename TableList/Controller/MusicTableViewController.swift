//
//  MusicTableViewController.swift
//  TableList
//
//  Created by olga.krjuckova on 03/08/2021.
//

import UIKit

class MusicTableViewController: UITableViewController {
    
      var trackList = [
                "Carly Rae Japsen - Dedicated",
                "Dj Khaled - father of",
                "Injury Reserve - Jailbrake",
                "Jonas Brothers - Happiness Begins ",
                "Joyner Lucas - adhd",
                "Maluma - 11-11",
                "Never Young - LOSER",
                "Rammstein - rammstein",
                "Skepta - Ignorance Is Bliss",
                "Skillet - Victory",
                "Tylor the Creator - IGOR",
                "YG - Stop Snitching",
              ]
    
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
        
        return trackList.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath)
        
        // to access the cell
        cell.textLabel?.text = trackList[indexPath.row]
        //examp. for the cell
        cell.detailTextLabel?.text = trackList[indexPath.row]
        //to put image for cell, we updating cell image -> replace "String" with same track
        //  list (images in Assets has the same name as in track list ( Array -> trackList))
        cell.imageView?.image = UIImage(named: trackList[indexPath.row])
        
        // Configure the cell...

        return cell
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
