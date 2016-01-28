//: Playground - noun: a place where people can play

import UIKit

let greeting:String = "Hello,"
var names = ["Jungmin", "Soomin", "Jemma"]
names = ["Add", "this", "name"]
let myName = "YuJungmin"


//myName = "Jungmin"
for name in names {
    print("\(greeting)! \(name) from \(myName)")
}


let maxSpeed:Int = 110
//maxSpeed += 10

var currentSpeed = 100
currentSpeed += 10

var gpsSpeed:Double = 105.7

print("\(currentSpeed)")


var str = "Hello, playground"

let pi = 3.14
let divider = 2.0
let pi_2 = pi / divider


var currentSpeed1 = 110
currentSpeed1 += 10
currentSpeed1 += Int(20.5)

let intMax = Int.max
let UintMax = UInt.max
let intMin = Int.min
let UintMin = UInt.min

let time1 = (9, 0, 48)
time1.0
let time2: (h:Int, m:Int, s:Int) = (11, 51, 5)
time2.h

let duration = (time1, time2)
let (start, end) = duration
let endHour = end.h


let today1: (h:Int, m:Int, s:Int) = (9, 10, 23)
let today2: (h:Int, m:Int, s:Int) = (17, 8, 21)
let duration2 = (today1, today2)
let (start2, end2) = duration2
print("We studied until \(end2.h - start2.h) hours today")

//today는 (시작(시,분,초), 종료(시,분,초))로 구성된 Tuple
let today = ((9,20,23), (17,8,21))
print("We studied until \(today.1.0-today.0.0) hours today")


var meetingRooms:Array<String> = ["One", "Two", "Three", "Five", "Six", "Seven"]
var groups:[Int] = [10,8,4,9]
meetingRooms += ["Four"]

var speedHistory:[Int] = []
speedHistory += [currentSpeed]
let gpsSpeed0901 = 114.1
speedHistory.append(Int(gpsSpeed0901))

speedHistory[0]
speedHistory.last


let historyBackup = speedHistory
speedHistory += [150]
historyBackup


var contest1:[String: String] = ["버스서비스아이디어공모전":"서울시민", "GS25서비스공모전":"GS25이용고객", "한옥디자인공모전":"건축학과 전공자", "3M마케팅공모전":"누구나"]
let contestNames = [String](contest1.keys)
let contestPeople = [String](contest1.values)



/*
서력 기원 연수가 4로 나누어 떨어지는 해는 윤년으로 한다.
이 중 100으로 나눠 떨어지는 해는 평년으로 한다.
그중에 400으로 나누어 떨어지는 해는 윤년으로 한다.
*/


var year:Int = 2016

if (year % 400 == 0)
{
    print("\(year)은 윤년입니다")
}

else if (year % 100 == 0)
{
    print("\(year)은 평년입니다")
}

else if (year % 4 == 0) {
    print("\(year)은 윤년입니다")
}

else
{
    print("\(year)은 평년입니다")
}


//이렇게 해도 되는데..page 90에 있는 test case는 뭐지?




//p28 code 2-21

var title : String = "Storyboard Prototyping"
var ratings1 : [Int]? = nil
var supportURL : String? = nil

/* print("\(title) has \(ratings!.count) ratings. \r\nsupport web page : \(supportURL)")
*/




//p29 code 2-23

supportURL = "www.codershigh.com"
var bookDescription:String = "\(title)"
if ratings != nil {
    bookDescription += "has \(ratings!.count) ratings"
}
if supportURL != nil {
    bookDescription += "\r\nsupport web page: \(supportURL!)"
}

print("\(bookDescription)")





//p30 code 2-24

if let theRatings = ratings1 {
    bookDescription += "has \(theRatings.count) ratings"
}
if let theURL = supportURL {
    bookDescription += "\r\nsupport web page: \(theURL)"
}




//p30 code 2-25

var supportingURL : String! = nil
supportingURL = "www.codershigh.com"
bookDescription += "\r\nsupport web page: \(supportingURL)"


func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double) {
    var sum = 0.0, min = history[0], max = history[0]
    
    for value in history {
        if min > value { min = value }
        if max < value { max = value }
        sum += value
        
    }
    
    let average = sum / Double(history.count)
    return (average, min, max)
}

ratings = [4.5, 3.0, 5.0, 2.5]

bookDescription = "\(title)"

if let theRatings = ratings {
    let record = ratingRecord(theRatings)
    bookDescription += "has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)"
}



/*
문제가 이런식으로 나오면 어떻게 풀까?
1. record의 type을 명시하시오.
2. ratings = []일때 문제 해결 방식은?
아래에 나타낸 것*/


func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double) {
    var sum = 0.0, min = history[0], max = history[0]
    
    for value in history {
        if min > value { min = value }
        if max < value { max = value }
        sum += value
        
    }
    
    let average = sum / Double(history.count)
    return (average, min, max)
}

ratings = [4.5, 3.0, 5.0, 2.5]

bookDescription = "\(title)"

if let theRatings = ratings {
    let record = ratingRecord(theRatings)
    bookDescription += "has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)"
} else {
    bookDescription += "has no ratings yet"
}















