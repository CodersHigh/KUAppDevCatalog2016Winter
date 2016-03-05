//
//  ItineraryListViewController.swift
//  PlanA_2
//
//  Created by cscoi011 on 2016. 2. 18..
//  Copyright © 2016년 KoreaUniversity. All rights reserved.
//

import Foundation
import UIKit

class ItineraryListViewController:UITableViewController {
    
    //ViewController-Scene LifeCycle
    //var myWallet:[Money] = []
    
    var planA = Itinerary(name: "PlanA", makeDate: NSDate())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let KoreaNSeoul = CountryNCity(name: "Korea, Seoul")
        planA.addCountryNCity(KoreaNSeoul)
        
        let incheonAirport = Place(title: "Incheon Airport", coordinate: (37.460448, 126.440619), placetype: .DeparturePoint)
        KoreaNSeoul.addPlace(incheonAirport)
        
        let FranceNParis = CountryNCity(name: "France, Paris")
        planA.addCountryNCity(FranceNParis)
        
        let cdgAirport = Place(title: "Charles de Gaulle Airport", coordinate: (49.009845, 2.547946), placetype: .MiddlePoint)
        FranceNParis.addPlace(cdgAirport)
        let eiffelTower = Place(title: "Eiffel Tower", coordinate: (48.858557, 2.294411), placetype: .MiddlePoint)
        FranceNParis.addPlace(eiffelTower)
        let triomphe = Place(title: "Arc de Triomphe", coordinate: (48.873968, 2.295060), placetype: .MiddlePoint)
        FranceNParis.addPlace(triomphe)
        
        
        let EnglandNLondon = CountryNCity(name: "England, London")
        planA.addCountryNCity(EnglandNLondon)
        
        let heathrowAirport = Place(title: "Heathrow Airport", coordinate: (51.470009, -0.454285), placetype: .MiddlePoint)
        EnglandNLondon.addPlace(heathrowAirport)
        let theBritishMuseum = Place(title: "The British Museum", coordinate: (51.519387, -0.126667), placetype: .MiddlePoint)
        EnglandNLondon.addPlace(theBritishMuseum)
        let buckinghamPalace = Place(title: "Buckingham Palace", coordinate: (51.501364, -0.141718), placetype: .MiddlePoint)
        EnglandNLondon.addPlace(buckinghamPalace)

        
        let USANNewYork = CountryNCity(name: "USA, New York")
        planA.addCountryNCity(USANNewYork)
        
        let newarkAirport = Place(title: "Newark Liberty International Airport", coordinate: (40.689800, -74.174527), placetype: .MiddlePoint)
        USANNewYork.addPlace(newarkAirport)
        let timesSquare = Place(title: "Times Square", coordinate: (40.758895, -73.984702), placetype: .MiddlePoint)
        USANNewYork.addPlace(timesSquare)
        let centralPark = Place(title: "Central Park", coordinate: (40.782842, -73.965325), placetype: .ArrivalPoint)
        USANNewYork.addPlace(centralPark)

//        let koreanWon = Money(12000, currency: .KRW)
//        let usDollar = Money(590)
//        let euro = Money(400, currency: .EUR)
//        
//        myWallet += [koreanWon, usDollar, euro]
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    //deprecated, prohibited
    /*override func viewDidUnload() {
    super.viewDidLoad()
    }*/
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return planA.CountryNCities.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planA.CountryNCities[section].places.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath)
        
        //let country:Country = planA.itinerary[indexPath.section]
        let countryNcity:CountryNCity = planA.CountryNCities[indexPath.section]
        let places = countryNcity.places
        //print("indexPath = section:\(indexPath.section) , row:\(indexPath.row)")
        cell.textLabel!.text = places[indexPath.row].title
        //cell.imageView?.image = UIImage(named: "KoreanWon")
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(planA.CountryNCities[section].name)"
    }
    
    override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        if let view = view as? UITableViewHeaderFooterView {
            //view.backgroundView?.backgroundColor = UIColor.purpleColor()
            //view.textLabel!.backgroundColor = UIColor.clearColor()
            //view.textLabel!.textColor = UIColor.whiteColor()
            view.textLabel!.font = UIFont.boldSystemFontOfSize(22)
        }
        
    }
    
    
//    override func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        return "Footer"
//    }
    
    
}