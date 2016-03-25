//
//  DetailsViewController.swift
//  Table View and JSON
//
//  Created by Dao Bui on 24/03/16.
//  Copyright © 2016 Dao Bui. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var pirateName: UILabel!
    @IBOutlet weak var pirateLife: UILabel!
    @IBOutlet weak var pirateActiveYears: UILabel!
    @IBOutlet weak var pirateCountryOfOrigin: UILabel!
    @IBOutlet weak var pirateComments: UITextView!
    
    var selectedPirate : Pirate?
    
    override func viewDidLoad() {
        self.pirateName.text = self.selectedPirate?.name
        self.pirateLife.text = self.selectedPirate?.life
        self.pirateActiveYears.text = self.selectedPirate?.yearsActive
        self.pirateCountryOfOrigin.text = self.selectedPirate?.countryOrigin
        self.pirateComments.text = self.selectedPirate?.comments
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
