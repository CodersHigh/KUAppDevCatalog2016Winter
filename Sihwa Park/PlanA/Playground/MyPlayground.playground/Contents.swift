//: Playground - noun: a place where people can play

import UIKit

//Tuple
/*
let time1 = (9, 0, 48)
time1.0

let time2:(h:Int, m:Int, s:Int) = (11, 51, 5)

time2.h

let duration = (time1, time2)

let (start, end) = duration
let endHour = end.h

typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)

let today:Duration = ((9, 10, 23), (17, 8, 21))
print("We studied \(today.end.h - today.start.h) hours today")
*/


//Array
/*
var speedHistory:[Int] = []
let currentSpeed = 120
speedHistory += [currentSpeed]
let gpsSpeed0901 = 114.1
speedHistory += [Int(gpsSpeed0901)]

speedHistory[0]
speedHistory.last
speedHistory.first

let historyBackup = speedHistory
speedHistory += [150]
historyBackup
*/

//Dictionary
/*
var roomCapacity:[String:Int] = ["Banksy":4, "Rivera":8, "Kahlo":8, "Picasso":10, "Cezanne":20, "Matisse":30]

//roomCapacity += ["Renoir":40]
roomCapacity["Renoir"] = 40
roomCapacity
roomCapacity["Kahlo"]

let roomNames = [String](roomCapacity.keys)
*/

//Set
//순서가 없는 Array


var fake_data = [["대한민국, 서울","인천 국제 공항"], ["프랑스, 파리", "샤를 드골 공항", "에펠 탑", "에투알 개선문", "샹젤리제", "루브르 박물관", "노트르담 대성당"], ["영국, 런던", "히드로 공항", "대영박물관", "버킹엄 궁전"], ["미국, 뉴욕", "뉴왁국제공항", "뉴욕 타임스 스퀘어", "뉴욕 센트럴파크"]]
var seoulpoi:[String:[String]] = ["대한민국, 서울":["인천 국제 공항"]]
var parispoi = ["프랑스, 파리":["샤를 드골 공항", "에펠 탑", "에투알 개선문", "샹젤리제", "루브르 박물관", "노트르담 대성당"]]
var londonpoi = ["영국, 런던":["히드로 공항", "대영박물관", "버킹엄 궁전"]]
var newyorkpoi = ["미국, 뉴욕":["뉴왁국제공항", "뉴욕 타임스 스퀘어", "뉴욕 센트럴파크"]]

var worldpoi = [seoulpoi, parispoi, londonpoi, newyorkpoi]


fake_data[0]



var year:Int = 2012

if(year%4==0)
{

    if(year%400==0)
    {
        print("\(year)은 윤년입니다.")
    }
    else if(year%100==0)
    {
        print("\(year)은 윤년이 아닙니다.")
    }
    else
    {
        print("\(year)은 윤년입니다.")
    }

}
else
{
    print("\(year)은 윤년이 아닙니다.")
}







var title : String = "Storyboard Prototyping"
var ratings : [Double]? = nil
var supportURL : String? = nil

//print("\(title) has \(ratings!.count) ratings. \r\nsupport web page : \(supportURL)")

supportURL = "www.codershigh.com"
var bookDescription:String = "\(title)"

if ratings != nil
{
    bookDescription += "has \(ratings!.count) ratings"
}
if supportURL != nil
{
    bookDescription += "\r\nsupport web page: \(supportURL!)"
}

print("\(bookDescription)")



func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double)?
{
    var sum = 0.0, min = history[0], max = history[0]
    
    if(history.count==0)
    {
        return nil
    }
    
    for value in history
    {
        if min>value
        {
            min = value
        }
        if max<value
        {
            max = value
        }
        sum+=value
    }
    
    let average = sum / Double(history.count)
    return (average, min, max)
    
}

ratings = []
bookDescription = "\(title)"
//if let theRatings = ratings
//{
//    if let record = ratingRecord(theRatings)
//    {
//        bookDescription += " has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)"
//    }
//    else
//    {
//        bookDescription += " has error"
//    }
//}


print(bookDescription)


//struct Task
//{
//    var title:String
//    var time:Int?
//}
//
//var callTask = Task(title: "Call to Randy", time: 10*60)
////var reportTask = Task()
//var reportTask = Task(title: "Report to Boss", time: nil)
//
//var todayTask:[Task] = []
//todayTask += [callTask, reportTask]
//todayTask[1].time = 15*60
//
//callTask.title = "Call to Toby"
//print("today task = \(todayTask) \r\n callTask = \(callTask) \r\n reportTask = \(reportTask)")
//





class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
}

struct Task {
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
}

let me:Employee = Employee()
me.name = "Alex"
me.phoneNumber = "010-1234-5678"

let toby:Employee = Employee()
toby.name = "Toby"
toby.phoneNumber = "011-5678-1234"

var callTask = Task(title: "Call to Toby", time: 10*60, owner:me, participant:toby)
var reportTask = Task(title:"Report to Boss", time: nil, owner:me, participant:nil)
callTask.participant?.phoneNumber = "010-5678-1234"

var todayTask:[Task] = []
todayTask += [callTask, reportTask]
todayTask[1].time = 15*60




struct Resolution
{
    var width = 0
    var height = 0
}


class VideoMode
{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
}


































