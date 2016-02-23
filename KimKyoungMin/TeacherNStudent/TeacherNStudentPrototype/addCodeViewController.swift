//
//  addCodeViewController.swift
//  TeacherNStudentPrototype
//
//  Created by cscoi007 on 2016. 2. 23..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import UIKit
import Foundation

class addCodeViewController:UIViewController{
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender?.tag == 11{
            let BeingAddedCode = self.AddCodeTextField.text!
            let destVC = segue.destinationViewController as? optionTableViewCodeConnection
            destVC?.myCode.append(BeingAddedCode)
            destVC?.tableView.reloadData()
        }
    }
    @IBOutlet weak var AddCodeTextField: UITextField!
    
    @IBAction func DoneCode(sender: AnyObject) {
        let BeingAddedCode = self.AddCodeTextField.text!
        
        if let presentingVC = self.presentingViewController as? UINavigationController, let topVC = presentingVC.topViewController as? optionTableViewCodeConnection {
            topVC.myCode.append(BeingAddedCode)
            topVC.tableView.reloadData()
        }
        
        self.dismissViewControllerAnimated(true, completion: nil)
        }
    
    @IBAction func CancelAddCode(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

