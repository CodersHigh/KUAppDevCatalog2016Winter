//
//  InsertViewController.swift
//  FinalPrototype1
//
//  Created by KimDongHawn on 2016. 2. 20..
//  Copyright © 2016년 KimDongHawn. All rights reserved.
//

import UIKit



class InsertViewController:UITableViewController {
    
    var delegate: InsertViewControllerDelegate?

    
    @IBOutlet weak var inputUrl: UITextField!
    @IBOutlet weak var inputKeyword: UITextField!
    @IBOutlet weak var hour: UITextField!
    @IBOutlet weak var minute: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }

    @IBAction func cancel(sender: AnyObject) {
        self.inputUrl.resignFirstResponder()
        self.inputKeyword.resignFirstResponder()

        
        self.delegate!.InsertViewControllerDidCancel(self)
    }
    
    @IBAction func done(sender: AnyObject) {
        self.inputUrl.resignFirstResponder()
        self.inputKeyword.resignFirstResponder()
 
        
        guard let url = inputUrl.text, searchKeyword = inputKeyword.text
            else {
                return
        }
        let newAddress = OneLineAddress(url: url, searchKeyWord: searchKeyword)
        self.delegate!.InsertViewControllerDidFinish(self, data: newAddress)
    
        }
    
}