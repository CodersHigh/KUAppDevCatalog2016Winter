//
//  ViewController.swift
//  PlanA
//
//  Created by cscoi011 on 2016. 2. 22..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var ItineraryOnMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
//        let triomphe = Place(name: "Arc de Triomphe", coordinate: (48.873968, 2.295060), placetype: .MiddlePoint)
//        mapView(ItineraryOnMap, viewForAnnotation: triomphe)

        let incheonAirport = Place(title: "Incheon Airport", coordinate: (37.460448, 126.440619), placetype: .DeparturePoint)
        
        ItineraryOnMap.addAnnotation(incheonAirport)
        //mapView(ItineraryOnMap, viewForAnnotation: incheonAirport)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
    
    
}

