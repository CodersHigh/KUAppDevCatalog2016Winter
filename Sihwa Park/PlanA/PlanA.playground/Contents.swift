//: Playground - noun: a place where people can play

import UIKit
/*
var fake_data = [["대한민국, 서울","인천 국제 공항"], ["프랑스, 파리", "샤를 드골 공항", "에펠 탑", "에투알 개선문", "샹젤리제", "루브르 박물관", "노트르담 대성당"], ["영국, 런던", "히드로 공항", "대영박물관", "버킹엄 궁전"], ["미국, 뉴욕", "뉴왁국제공항", "뉴욕 타임스 스퀘어", "뉴욕 센트럴파크"]]
var city_1:[String:[String]] = ["대한민국, 서울":["인천 국제 공항"]]
var city_2 = ["프랑스, 파리":["샤를 드골 공항", "에펠 탑", "에투알 개선문", "샹젤리제", "루브르 박물관", "노트르담 대성당"]]
var londonpoi = ["영국, 런던":["히드로 공항", "대영박물관", "버킹엄 궁전"]]
var newyorkpoi = ["미국, 뉴욕":["뉴왁국제공항", "뉴욕 타임스 스퀘어", "뉴욕 센트럴파크"]]
*/
//var worldpoi = [seoulpoi, parispoi, londonpoi, newyorkpoi]

enum Continent
{
    case Asia
    case Europe
    case NorthAmerica
    case SouthAmerica
    case Oceania
    case Africa
}

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
    var itinerary:[Country] = []
    
    func addCountry(newCountry:Country)
    {
        self.itinerary.append(newCountry)
    }
    
    init(name:String, makeDate:NSDate)
    {
        self.name = name
        self.makeDate = makeDate
    }
}

class Country
{
    let name:String
    var cities:[City] = []
    let region : Continent
    
    func addCity(newCity:City)
    {
        self.cities.append(newCity)
    }
    
    init(name:String, continent:Continent)
    {
        self.name = name
        self.region = continent
    }
}

class City
{
    let name:String
    let image:String
    var places:[Place] = []
    
    func addPlace(newPlace:Place)
    {
        self.places.append(newPlace)
        
    }
    
    init(name:String, image:String)
    {
        self.name = name
        self.image = image
    }
    
}

class Place
{
    let name:String
    let image:String
    let coordinate:(Double, Double)
    var placeType:IsSpecialPlace
    
    init(name:String, image:String, coordinate:(Double, Double), placetype:IsSpecialPlace)
    {
        self.name = name
        self.image = image
        self.coordinate = coordinate
        self.placeType = placetype
    }
    
}

var PlanA = Itinerary(name: "PlanA", makeDate: NSDate())


let Korea = Country(name: "Korea", continent: .Asia)
PlanA.addCountry(Korea)

let Seoul = City(name: "Seoul", image: "http://github.com/PlanA/Korea/Seoul/3242349")
Korea.addCity(Seoul)

let incheonAirport = Place(name: "Incheon Airport", image: "http://github.com/PlanA/Korea/Seoul/incheonAirport", coordinate: (37.460448, 126.440619), placetype: .DeparturePoint)
Seoul.addPlace(incheonAirport)


let France = Country(name: "France", continent: .Europe)
PlanA.addCountry(France)

let Paris = City(name: "Paris", image: "http://github.com/PlanA/France/Paris/9488833")
France.addCity(Paris)

let cdgAirport = Place(name: "Charles de Gaulle Airport", image: "http://github.com/PlanA/France/Paris/cdgAirport", coordinate: (49.009845, 2.547946), placetype: .MiddlePoint)
Paris.addPlace(cdgAirport)
let eiffelTower = Place(name: "Eiffel Tower", image: "http://github.com/PlanA/France/Paris/eiffelTower", coordinate: (48.858557, 2.294411), placetype: .MiddlePoint)
Paris.addPlace(eiffelTower)
let triomphe = Place(name: "Arc de Triomphe", image: "http://github.com/PlanA/France/Paris/triomphe", coordinate: (48.873968, 2.295060), placetype: .MiddlePoint)
Paris.addPlace(triomphe)


let USA = Country(name: "USA", continent: .NorthAmerica)
PlanA.addCountry(USA)

let NewYork = City(name: "New York", image: "http://github.com/PlanA/USA/NewYork")
USA.addCity(NewYork)

let newarkAirport = Place(name: "Newark Liberty International Airport", image: "http://github.com/PlanA/USA/NewYork/newarkAirport", coordinate: (40.689800, -74.174527), placetype: .MiddlePoint)
NewYork.addPlace(newarkAirport)
let timesSquare = Place(name: "Times Square", image: "http://github.com/PlanA/USA/NewYork/timesSquare", coordinate: (40.758895, -73.984702), placetype: .MiddlePoint)
NewYork.addPlace(timesSquare)
let centralPark = Place(name: "Central Park", image: "http://github.com/PlanA/USA/NewYork/centralPark", coordinate: (40.782842, -73.965325), placetype: .ArrivalPoint)
NewYork.addPlace(centralPark)









