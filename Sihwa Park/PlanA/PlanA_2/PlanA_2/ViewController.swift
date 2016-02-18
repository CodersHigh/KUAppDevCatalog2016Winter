//
//  ViewController.swift
//  PlanA_2
//
//  Created by cscoi011 on 2016. 2. 16..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var SearchBar: UISearchBar!

    @IBOutlet weak var InitialMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let coordinate:CLLocationCoordinate2D = CLLocationCoordinate2DMake(34.03, 118.14)
        let span = MKCoordinateSpanMake(100, 100)
        let region = MKCoordinateRegionMake(coordinate, span)
        InitialMapView.setRegion(region, animated: true)
        
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    


}

