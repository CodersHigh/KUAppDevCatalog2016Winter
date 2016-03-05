//
//  InitialMapView.swift
//  PlanA
//
//  Created by cscoi011 on 2016. 2. 23..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import Foundation
import MapKit
import UIKit

class InitialMapView:UIViewController, UISearchBarDelegate, MKMapViewDelegate, CLLocationManagerDelegate
{
    var searchController:UISearchController!
    var annotation:MKAnnotation!
    var localSearchRequest:MKLocalSearchRequest!
    var localSearch:MKLocalSearch!
    var localSearchResponse:MKLocalSearchResponse!
    var error:NSError!
    var pointAnnotation:MKPointAnnotation!
    var pinAnnotationView:MKPinAnnotationView!
    var annotations:[MKAnnotation]!
    
    @IBOutlet weak var initialMapView: MKMapView!
    @IBOutlet weak var searchBar: UISearchBar!
    
     override func viewDidLoad()
     {
        self.navigationController?.title = "planA"
        self.searchBar.delegate = self
        self.initialMapView.delegate = self
        super.viewDidLoad()

        //self.mapView(self.initialMapView, viewForAnnotation: self.annotation)
    
     }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar){
        //1
        searchBar.resignFirstResponder()
        dismissViewControllerAnimated(true, completion: nil)
//        if self.initialMapView.annotations.count != 0{
//            annotation = self.initialMapView.annotations[0]
//            self.initialMapView.removeAnnotation(annotation)
//        }
        //2
        localSearchRequest = MKLocalSearchRequest()
        localSearchRequest.naturalLanguageQuery = searchBar.text
        localSearch = MKLocalSearch(request: localSearchRequest)
        localSearch.startWithCompletionHandler { (localSearchResponse, error) -> Void in
            
            if localSearchResponse == nil{
                let alertController = UIAlertController(title: nil, message: "Place Not Found", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alertController, animated: true, completion: nil)
                return
            }
            //3
            self.pointAnnotation = MKPointAnnotation()
            self.pointAnnotation.title = searchBar.text
            self.pointAnnotation.coordinate = CLLocationCoordinate2D(latitude: localSearchResponse!.boundingRegion.center.latitude, longitude:     localSearchResponse!.boundingRegion.center.longitude)
            
            
            self.pinAnnotationView = MKPinAnnotationView(annotation: self.pointAnnotation, reuseIdentifier: nil)
            self.initialMapView.centerCoordinate = self.pointAnnotation.coordinate
            //self.annotations.append(self.pinAnnotationView.annotation!)
            self.initialMapView.addAnnotation(self.pinAnnotationView.annotation!)
            //self.initialMapView.dequeueReusableAnnotationViewWithIdentifier("MyCustomAnnotation")
            
        }
        
        
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        
        let identifier = "MyCustomAnnotation"
        
        var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
        } else {
            annotationView!.annotation = annotation
        }
        
        configureDetailView(annotationView!)
        
        return annotationView
    }
    
    func configureDetailView(annotationView: MKAnnotationView) {
        let width = 262
        let height = 35
        
        let snapshotView = UIView()
        let views = ["snapshotView": snapshotView]
        snapshotView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:[snapshotView(262)]", options: [], metrics: nil, views: views))
        snapshotView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[snapshotView(35)]", options: [], metrics: nil, views: views))
        
        let options = MKMapSnapshotOptions()
        options.size = CGSize(width: width, height: height)
        options.mapType = .SatelliteFlyover
        options.camera = MKMapCamera(lookingAtCenterCoordinate: annotationView.annotation!.coordinate, fromDistance: 250, pitch: 65, heading: 0)
        
//        let snapshotter = MKMapSnapshotter(options: options)
//        snapshotter.startWithCompletionHandler { snapshot, error in
//            if snapshot != nil {
//                let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
//                imageView.image = snapshot!.image
//                snapshotView.addSubview(imageView)
//            }
//        }
        
//        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
//        segmentedControl.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
//        segmentedControl.selectedSegmentIndex = 0
//        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
//
//        
//        let segmentedControlTop = NSLayoutConstraint(item: segmentedControl,
//            attribute: .Top,
//            relatedBy: .Equal,
//            toItem: snapshotView,
//            attribute: .Top,
//            multiplier: 1.0,
//            constant: 0.0)
//        
//        let segmentedControlLeading = NSLayoutConstraint(item: segmentedControl,
//            attribute: .Leading,
//            relatedBy: .Equal,
//            toItem: snapshotView,
//            attribute: .Leading,
//            multiplier: 1.0,
//            constant: 0.0)
//        
//        let segmentedControlTrailing = NSLayoutConstraint(item: segmentedControl,
//            attribute: .Trailing,
//            relatedBy: .Equal,
//            toItem: snapshotView,
//            attribute: .Trailing,
//            multiplier: 1.0,
//            constant: 0.0)
//        
//        snapshotView.addConstraint(segmentedControlTop)
//        snapshotView.addConstraint(segmentedControlLeading)
//        snapshotView.addConstraint(segmentedControlTrailing)
        
        let segmentedControl = UISegmentedControl(items: ["출발지로", "다음 목적지로", "도착지로"])
        //employeeSegmentedControl.selectedSegmentIndex = 0

        //employeeSegmentedControl.addTarget(self, action: Selector("indexChanged:"), forControlEvents: .ValueChanged)
        snapshotView.addSubview(segmentedControl)
        
        //employeeSegmentedControl.setTranslatesAutoresizingMaskIntoConstraints(false)
        snapshotView.addConstraint(NSLayoutConstraint(item: segmentedControl, attribute: .Width, relatedBy: .Equal, toItem: snapshotView, attribute: .Width, multiplier: 1.0, constant: 0.0))
        snapshotView.addConstraint(NSLayoutConstraint(item: segmentedControl, attribute: .Height, relatedBy: .Equal, toItem: snapshotView, attribute: .Height, multiplier: 1.0, constant: 0.0))
        snapshotView.addConstraint(NSLayoutConstraint(item: segmentedControl, attribute: .CenterX, relatedBy: .Equal, toItem: snapshotView, attribute: .CenterX, multiplier: 1.0, constant: 0.0))
        snapshotView.addConstraint(NSLayoutConstraint(item: segmentedControl, attribute: .CenterY, relatedBy: .Equal, toItem: snapshotView, attribute: .CenterY, multiplier: 1.2, constant: 0.0))
        
        annotationView.detailCalloutAccessoryView = snapshotView
    }
    


    
    
    
}



