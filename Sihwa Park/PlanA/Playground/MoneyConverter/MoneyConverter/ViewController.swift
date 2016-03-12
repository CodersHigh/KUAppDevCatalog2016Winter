//
//  ViewController.swift
//  MoneyConverter
//
//  Created by cscoi011 on 2016. 2. 15..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var currencySegment: UISegmentedControl!
    
    @IBOutlet weak var moneyField: UITextField!
    
    @IBOutlet weak var findFriendMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let initialCenter = CLLocationCoordinate2DMake(37.584, 127.026)
        let initialSpan = MKCoordinateSpanMake(0.005, 0.005)
        let initialRegion : MKCoordinateRegion = MKCoordinateRegionMake(initialCenter, initialSpan)
        findFriendMap.setRegion(initialRegion, animated: true)

    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convert(sender: AnyObject) {
        
//        let ratio:Double
//        
//        switch currencySegment.selectedSegmentIndex
//        {
//        case 0:
//            ratio = 1178
//        case 1:
//            ratio = 1/1178
//        default:
//            ratio = 0
//        }
//        
//
//        if let sourceMoney = Double(moneyField.text!)
//        {
//            resultLabel.text = "\(sourceMoney*ratio)"
//        }

        guard let sourceCurrency = Currency(rawValue: currencySegment.selectedSegmentIndex)
        else
        {
            print("Source Currency Error")
            return
        }
        
        guard let sourceAmount = Double(moneyField.text!)
        else
        {
            resultLabel.text = "Error"
            return
        }
        
        let sourceMoney = Money(sourceAmount, currency: sourceCurrency)
        
        var targetMoneyString = ""
        for(var i=0; i<4; ++i)
        {
            targetMoneyString = sourceMoney.valueInCurrency(Currency.init(rawValue: i)!)
            targetMoneyString += "\r\n"
        }
        
        resultLabel.text = targetMoneyString
       
    }

}

