//
//  ViewController.swift
//  DemoTvOS_Alert
//
//  Created by Mobile6 on 12/18/15.
//  Copyright © 2015 Pixonsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonOneClicked(sender: AnyObject) {
        let title = "Download Completed"
        let message = "Your video download has completed. You can access the video from the main menu"
        
        let buttonTitle = "OK"
        let alert = UIAlertController(title:title, message: message, preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: buttonTitle, style: UIAlertActionStyle.Default){
            _ in
            print("OK was pressed")
        }
        
        alert.addAction(okAction)
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func buttonTwoClicked(sender: AnyObject) {
        
        let title = "Error Loading Video"
        let message = "There was a problem loading your video. Please try again."
        
        let okButton = "OK"
        let retryButton = "Retry Download"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: okButton, style: .Default, handler: nil)
        let retryAction = UIAlertAction(title: retryButton, style: .Cancel){
            _ in
            print("Call code to retry download and probably show a spinner")
        }
        
        alert.addAction(okAction)
        alert.addAction(retryAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func buttonThreeClicked(sender: AnyObject) {
        
        let title = "Are you sure?"
        let message = "If you delete this it will be permanently gone, Delete?"
        
        let cancelButton = "Cancel"
        let deleteButton = "Delete"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: cancelButton, style: .Cancel, handler: nil)
        let deleteAction = UIAlertAction(title: deleteButton, style: .Destructive){
            _ in
            print("Run code to permanently delete video")
        }
        
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
}

