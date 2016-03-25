//
//  AboutViewController.swift
//  practicum02
//
//  Created by Dao Bui on 24/03/16.
//  Copyright © 2016 Dao Bui. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //KREEG DIT NIET WERKEN
    @IBAction func showTextField(sender: UIButton) {
        var alertView =
            UIAlertView(
                title: "the text is:",
                message: textToBeShown.text,
                delegate: nil,
                cancelButtonTitle: "done!")
        alertView.show()
    }

    @IBOutlet weak var textToBeShown: UITextField!
    //
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
