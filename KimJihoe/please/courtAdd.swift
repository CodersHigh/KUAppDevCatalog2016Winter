//
//  ViewController.swift
//  please
//
//  Created by cscoi022 on 2016. 2. 17..
//  Copyright © 2016년 cscoi022. All rights reserved.
//

import UIKit
import MapKit

class courtAdd: UIViewController,MKMapViewDelegate {
    //MKplacemark
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var courttype: UISegmentedControl!
    @IBOutlet weak var rimClicker: UIStepper!
    @IBOutlet weak var rimNumbers: UILabel!
    @IBOutlet weak var courtNameAdder: UITextField!

    
    var newCourt = courtinfo()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let latitude:CLLocationDegrees = 37.6
        let longtitude:CLLocationDegrees = 127.0
        let latDelta:CLLocationDegrees = 0.05
        let lonDelta:CLLocationDegrees = 0.05
        let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta,lonDelta)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude,longtitude)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location,span)
        map.setRegion(region, animated: true)
        
        let uilpgr = UILongPressGestureRecognizer(target: self, action: "save:")
        uilpgr.minimumPressDuration = 1
        map.addGestureRecognizer(uilpgr)
    }
    var newCourtLocation:(Double,Double)?
    func save(gestureRecognizer:UIGestureRecognizer){
        let touchpoint=gestureRecognizer.locationInView(self.map)
        var newCoordinate:CLLocationCoordinate2D=map.convertPoint(touchpoint, toCoordinateFromView: self.map)
        var annotation = MKPointAnnotation()
        annotation.coordinate=newCoordinate
        annotation.title = "New court"
        annotation.subtitle = "\(newCoordinate.latitude),\(newCoordinate.longitude)"
        let annotationsToRemove = map.annotations.filter { $0 !== map.userLocation }
        map.removeAnnotations( annotationsToRemove )
        map.addAnnotation(annotation)
        newCourtLocation = (newCoordinate.latitude,newCoordinate.longitude)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rimClickAct(sender: AnyObject) {
        rimNumbers.text = "\(Int(rimClicker.value))"
    }
    
    @IBAction func complete(sender: AnyObject) {
        newCourt.courtLocation = newCourtLocation
        switch courttype.selectedSegmentIndex{
        case 0: newCourt.courtType = courtinfo.courtFloor.Asphalt
        case 1: newCourt.courtType = courtinfo.courtFloor.Cement
        case 2: newCourt.courtType = courtinfo.courtFloor.Sand
        case 3: newCourt.courtType = courtinfo.courtFloor.Urethane
        case 4: newCourt.courtType = courtinfo.courtFloor.Wood
        default: newCourt.courtType = courtinfo.courtFloor.Sand
        
        }
        newCourt.courtRims = Int(rimNumbers.text!)
        self.dismissViewControllerAnimated(true, completion: {});//This is intended to dismiss the Info sceen.
    }
    
    @IBAction func cancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {});//This is intended to dismiss the Info sceen.
    }
}

