//
//  DetailViewController.swift
//  TestTableView
//
//  Created by Lingostar on 2016. 2. 17..
//  Copyright © 2016년 CodersHigh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem as? NSDate {
            let myDateFormatter = NSDateFormatter()
            myDateFormatter.dateFormat = "yyyy/MM/dd"
            
            if let label = self.detailDescriptionLabel {
                label.text = myDateFormatter.stringFromDate(detail)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

