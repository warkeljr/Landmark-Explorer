//
//  TableViewController.swift
//  landmarkExplorerTableView
//
//  Created by W.S. van Arkel jr. on 19-06-17.
//  Copyright © 2017 W.S. van Arkel jr. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    //let cellIndetifier = "Cell"
    
    
    var cityList = ["Saint Basil's Cathedral", "Amsterdam Canals", "Eifeltower", "Golden Gate Bridge", "Taj Mahal", "Berlin TV Tower", "Statue of Liberty", "Big Ben", "London Eye", "Louvre", "Marina Bay Sands", "Opera House", "Tower Brigde"]
    
    var cityImageList = ["moscow.jpg", "amsterdam.jpg", "eifeltower.jpg", "goldengate.jpg", "tjaimahal.jpg", "berlin.jpg", "newyork.jpg", "bigben.jpg", "londonwheel", "louvremuseum", "marinabaysands", "operahouse", "towerbridge"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
        loginStatus()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cityList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath) as! CustomTableCell

        cell.cellCityImage.image = UIImage(named: cityImageList[indexPath.row])
        cell.cellCityLabel.text = cityList[indexPath.row]

        return cell
    }

  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailVC", sender: indexPath.row)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if(segue.identifier == "DetailVC") {
            
            let DVC = segue.destination as! DetailViewController
            
            if let indexpath = self.tableView.indexPathForSelectedRow {
                
                let cityTittle = cityList[indexpath.row] as String
                DVC.detailTittleLabelData = cityTittle
                
                let image = cityImageList[indexpath.row] as String
                DVC.detailImageViewData = image
            }
        }
        
    }
    
    func loginStatus() {
        
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
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

}
