//
//  AddNewDayViewController.swift
//  RememberDay
//
//  Created by DOKEN on 2016. 2. 23..
//  Copyright © 2016년 DOKEN. All rights reserved.
//

import UIKit

class AddNewDayViewController: UIViewController {

    @IBOutlet weak var newText: UITextField!
    
    @IBOutlet weak var newDatePicker: UIDatePicker!
    
    @IBAction func dismiss(sender: AnyObject) {
         self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func addNDismiss(sender: AnyObject) {
        
        let selectedDate = self.newDatePicker.date
        
        
        let myDateFormatter = NSDateFormatter()
        myDateFormatter.dateFormat = "M . dd"
            
        
        
        let text = self.newText.text
        
        if let presentingVC = self.presentingViewController as? UINavigationController, let topVC = presentingVC.topViewController as? DayViewController {
        topVC.objects.append(myDateFormatter.stringFromDate(selectedDate) + " " + text!)
            topVC.tableView.reloadData()

        }
        
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    /*@IBAction func addNDismiss(sender: AnyObject) {
        let selectedDate = self.newDatePicker.date
        
        if let presentingVC = self.presentingViewController as? UINavigationController, let topVC = presentingVC.topViewController as? DayViewController {
            topVC.objects.append(selectedDate)
            topVC.tableView.reloadData()
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    */
    
}
