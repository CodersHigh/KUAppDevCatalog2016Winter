//
//  ItineraryOnMap.swift
//  PlanA
//
//  Created by cscoi011 on 2016. 2. 22..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import Foundation
import MapKit
import UIKit

class ItineraryOnMap: UIViewController{
    var planA = Itinerary(name: "PlanA", makeDate: NSDate())
    
    @IBOutlet weak var ItineraryOnMap: MKMapView!
    override func viewDidLoad() {
        //self.navigationController?.navigationBar.topItem?.title = "planA"
        //self.navigationItem.title = "planA"
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        //        let triomphe = Place(name: "Arc de Triomphe", coordinate: (48.873968, 2.295060), placetype: .MiddlePoint)
        //        mapView(ItineraryOnMap, viewForAnnotation: triomphe)
        
//        let incheonAirport = Place(title: "Incheon Airport", coordinate: (37.460448, 126.440619), placetype: .DeparturePoint)
//        
//        ItineraryOnMap.addAnnotation(incheonAirport)
        //mapView(ItineraryOnMap, viewForAnnotation: incheonAirport)
        
        
        let KoreaNSeoul = CountryNCity(name: "Korea, Seoul")
        planA.addCountryNCity(KoreaNSeoul)
        
        let incheonAirport = Place(title: "Incheon Airport", coordinate: (37.460448, 126.440619), placetype: .DeparturePoint)
        KoreaNSeoul.addPlace(incheonAirport)
        ItineraryOnMap.addAnnotations(KoreaNSeoul.places)
        
        let FranceNParis = CountryNCity(name: "France, Paris")
        planA.addCountryNCity(FranceNParis)
        
        let cdgAirport = Place(title: "Charles de Gaulle Airport", coordinate: (49.009845, 2.547946), placetype: .MiddlePoint)
        FranceNParis.addPlace(cdgAirport)
        let eiffelTower = Place(title: "Eiffel Tower", coordinate: (48.858557, 2.294411), placetype: .MiddlePoint)
        FranceNParis.addPlace(eiffelTower)
        let triomphe = Place(title: "Arc de Triomphe", coordinate: (48.873968, 2.295060), placetype: .MiddlePoint)
        FranceNParis.addPlace(triomphe)
        ItineraryOnMap.addAnnotations(FranceNParis.places)
        
        
        let EnglandNLondon = CountryNCity(name: "England, London")
        planA.addCountryNCity(EnglandNLondon)
        
        let heathrowAirport = Place(title: "Heathrow Airport", coordinate: (51.470009, -0.454285), placetype: .MiddlePoint)
        EnglandNLondon.addPlace(heathrowAirport)
        let theBritishMuseum = Place(title: "The British Museum", coordinate: (51.519387, -0.126667), placetype: .MiddlePoint)
        EnglandNLondon.addPlace(theBritishMuseum)
        let buckinghamPalace = Place(title: "Buckingham Palace", coordinate: (51.501364, -0.141718), placetype: .MiddlePoint)
        EnglandNLondon.addPlace(buckinghamPalace)
        ItineraryOnMap.addAnnotations(EnglandNLondon.places)
        
        
        let USANNewYork = CountryNCity(name: "USA, New York")
        planA.addCountryNCity(USANNewYork)
        
        let newarkAirport = Place(title: "Newark Liberty International Airport", coordinate: (40.689800, -74.174527), placetype: .MiddlePoint)
        USANNewYork.addPlace(newarkAirport)
        let timesSquare = Place(title: "Times Square", coordinate: (40.758895, -73.984702), placetype: .MiddlePoint)
        USANNewYork.addPlace(timesSquare)
        let centralPark = Place(title: "Central Park", coordinate: (40.782842, -73.965325), placetype: .ArrivalPoint)
        USANNewYork.addPlace(centralPark)
        ItineraryOnMap.addAnnotations(USANNewYork.places)
        
        
        let coordinate:CLLocationCoordinate2D = planA.CountryNCities[0].places[0].coordinate
        let span = MKCoordinateSpanMake(100, 100)
        let region = MKCoordinateRegionMake(coordinate, span)
        ItineraryOnMap.setRegion(region, animated: true)

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
}