//
//  DogBreedsTableViewController.swift
//  TablePractice
//
//  Created by Gia Schreitmueller on 8/12/19.
//  Copyright © 2019 Gia Schreitmueller. All rights reserved.
//

import UIKit

struct Dogs {
    var id: Int
    var title: String
    var text: String
    var image: String
}

class DogBreedsTableViewController: UITableViewController {
    var allDogBreeds = [
        
        Dogs(id: 1,
             title: "Doberman",
            text: "Doberman have brown and black fur.",
            image: "Doberman Dog"),
        
        Dogs(id:2,
             title:"Golden Retriever",
            text:"They can hold an egg in their mouth without breaking it.",
            image:"Golden Retriever with egg."),
        
        Dogs(id:3,
            title:"Husky",
            text:"Husky are good in the snow.",
            image:"Husky in snow.")
             
]
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allDogBreeds.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        cell.textLabel?.text = allDogBreeds[indexPath.row].title

        return cell
    }
 
  func tableView(_tableView: UITableView, titleForHeaderInSection section: Int)-> String? {
        
        return "Section\(section)"
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
