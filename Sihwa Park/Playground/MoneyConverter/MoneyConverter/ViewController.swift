//
//  ViewController.swift
//  MoneyConverter
//
//  Created by cscoi011 on 2016. 2. 15..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var currencySegment: UISegmentedControl!
    
    @IBOutlet weak var moneyField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convert(sender: AnyObject) {
        
        let ratio:Double
        
        switch currencySegment.selectedSegmentIndex
        {
        case 0:
            ratio = 1178
        case 1:
            ratio = 1/1178
        default:
            ratio = 0
        }
        

        if let sourceMoney = Double(moneyField.text!)
        {
            resultLabel.text = "\(sourceMoney*ratio)"
        }

        
        
       
    }

}

