//
//  main.swift
//  PlanA_2
//
//  Created by cscoi011 on 2016. 2. 16..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import Foundation
import UIKit
import MapKit


//enum Continent
//{
//    case Asia
//    case Europe
//    case NorthAmerica
//    case SouthAmerica
//    case Oceania
//    case Africa
//}

enum IsSpecialPlace
{
    case DeparturePoint
    case ArrivalPoint
    case MiddlePoint
}

class Itinerary
{
    let name:String
    let makeDate:NSDate
    var CountryNCities:[CountryNCity] = []
    
    func addCountryNCity(newCountryNCity:CountryNCity)
    {
        self.CountryNCities.append(newCountryNCity)
    }
    
    init(name:String, makeDate:NSDate)
    {
        self.name = name
        self.makeDate = makeDate
    }
}

//class Country
//{
//    let name:String
//    var cities:[City] = []
//    let region : Continent
//    
//    func addCity(newCity:City)
//    {
//        self.cities.append(newCity)
//    }
//    
//    init(name:String, continent:Continent)
//    {
//        self.name = name
//        self.region = continent
//    }
//}

class CountryNCity
{
    let name:String
    var places:[Place] = []
    
    func addPlace(newPlace:Place)
    {
        self.places.append(newPlace)
        
    }
    
    init(name:String)
    {
        self.name = name
    }
    
}

@objc
class Place:NSObject,  MKAnnotation
{
    let name:String
    @objc let coordinate:CLLocationCoordinate2D
    var placeType:IsSpecialPlace
    
    init(name:String, coordinate:(Double, Double), placetype:IsSpecialPlace)
    {
        self.name = name
        self.coordinate = CLLocationCoordinate2DMake(coordinate.0, coordinate.1)
        self.placeType = placetype
    }
    
}




