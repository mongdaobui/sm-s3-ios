//
//  TableViewController.swift
//  Table View and JSON
//
//  Created by Dao Bui on 24/03/16.
//  Copyright © 2016 Dao Bui. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var pirates = [Pirate]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadJsonData()
    }
    
    
    func loadJsonData() {
        let url = NSURL(string: "http://athena.fhict.nl/users/i886625/pirates.json")
        let request = NSURLRequest(URL: url!)
        let session = NSURLSession.sharedSession()
        let dataTask = session.dataTaskWithRequest(request) { (data, response, error) -> Void in
            do {
                if let jsonObject: AnyObject = try NSJSONSerialization.JSONObjectWithData(data!, 	   options: NSJSONReadingOptions.AllowFragments) {
                    self.parseJsonData(jsonObject)
                }
            }
            catch {
                print("Error parsing JSON data")
            }
        }
        dataTask.resume();
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selectedRow = self.tableView.indexPathForSelectedRow
        let selectedPirate = self.pirates[selectedRow!.row]
        let controller = segue.destinationViewController as! DetailsViewController
        controller.selectedPirate = selectedPirate
    }
    
    func parseJsonData(jsonObject:AnyObject) {
        if let jsonData = jsonObject as? NSArray {
            for item in jsonData {
                let newPirate = Pirate(
                    name: item.objectForKey("name") as! String,
                    life: item.objectForKey("life")as! String,
                    yearsActive: item.objectForKey("years_active") as! String,
                    countryOrigin: item.objectForKey("country_of_origin") as! String,
                    comments: item.objectForKey("comments") as! String
                )
                pirates.append(newPirate);
            }
        }
        self.tableView.reloadData()
    }



    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows
        return pirates.count
    }
    
    class UITableViewCell: UITableViewCell {
        @IBOutlet weak var labelPirateName: UILabel!
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        var currentRow = indexPath.row
        var currentPirate = self.pirates[currentRow]
        cell.labelPirateName?.text = currentPirate.name
        return cell
    }

}
