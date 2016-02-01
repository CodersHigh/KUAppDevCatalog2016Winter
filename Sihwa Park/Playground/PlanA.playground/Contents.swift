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

class Country
{
    let name:String
    var cities:[City]?
}

class City
{
    let name:String?
    let image:String?
    var places:[Place]?
    
}

class Place
{
    let name:String?
    let latitude:Double?
    let longitude:Double?
    
}

let Korea = Country()
Korea.name = "Korea"

let Seoul = City()
Seoul.name = "Seoul"
Korea.cities?.append(Seoul)

let incheonAirport = Place()
incheonAirport.latitude = 184.34
incheonAirport.longitude = 23.83
Seoul.places?.append(incheonAirport)


let France = Country()
France.name = "France"

let Paris = City()
Paris.name = "Paris"
France.cities?.append(Paris)

let cdgAirport = Place()
cdgAirport.latitude = 234.52
cdgAirport.longitude = 86.21
Paris.places?.append(cdgAirport)
let eiffelTower = Place()
eiffelTower.latitude = 235.23
eiffelTower.longitude = 84.29
Paris.places?.append(eiffelTower)




