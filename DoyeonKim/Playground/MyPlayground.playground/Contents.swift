
/* Tuple */

let time1 = (9,0,48)
time1.0

let time2:(h:Int, m:Int, s:Int) = (11, 51, 5)
time2.h

let duration = (time1, time2)

let (start, end) = duration

let endHour = end.h

//typealias Time = (h:Int, m:Int, s:Int)
//typealias Duration = (start:Time, end:Time)

let today = ((9,10,23),(17,8,21))

//Juseok Juseok Juseok

print("We studied until \(today.1.0 - today.0.0) hours today")

//print("We studied until \(today.end.h - today.start.h) hours today")

/* ------------------------------------------------------------ */

var meetingRooms : Array<String> = ["Banksy", "Rivera", "Kahlo"]

var groups:[Int] = [10,8,14,9]

meetingRooms += ["Renoir"]
meetingRooms.append("Hi")

let currentSpeed = 120

var speedHistory:[Int] = []

speedHistory += [currentSpeed]
speedHistory += [currentSpeed]
speedHistory += [130]

speedHistory.first

var RoomCapacity:[String:Int] = [ "A" : 4, "B" : 5]

var Day : (m:Int, d:Int)

/* leap year */

var year:Int = 1300

if year % 4 == 0 {
    if year % 100 != 0 {
        print("\(year)년은 윤년")
    }
    else{
        if year % 400 == 0{
            print("\(year)년은 윤년")
        }
        else{
            print("\(year)년은 윤년 아님")
        }
    }
}
else{
    print("아님")
}

/*  "Optional" is the starting and the end of the swift
    For Safety. */

var title : String = "Storyboard Prototyping"
var ratings : [Double]? = nil
var supportURL : String? = nil

supportURL = "www.codershigh.com"

var bookDescription : String = "\(title)"

if let theRatings = ratings{
    bookDescription += "has \(ratings!.count) ratings"
}
if let theURL = supportURL{
    bookDescription += "\r\nsupport web page: \(supportURL!)"
}

//print("\(bookDescription)")

/* ratingRecord Function */

func ratingRecord (history : [Double]) -> (average : Double, min : Double, max : Double)?
{
    var sum = 0.0, min = history[0], max = history[0]
    for value in history{
        if min > value { min = value }
        if max < value { max = value }
        sum += value
    }
    let average = sum / Double(history.count)
    return (average, min, max)
}

ratings = [4.5, 8.0, 5.0, 2.5]

bookDescription = "\(title)"

if let theRatings = ratings{
    if let record = ratingRecord(theRatings){
    bookDescription += "has \(theRatings.count) ratings, \r\naverage is \(record.average), from \(record.min) to \(record.max)"}
    else{
        print("Nope")
    }
}

print("\(bookDescription)")

/* HW : 
1. record type 명시
2. ratings = [] 일때 문제 해결 방식 고민
*/


/* 2.1 - 1 Structure */

struct Task {
    var title:String
    var time:Int?
}
var callTask = Task(title:"Call to Randy", time: 10*60)
var reportTask = Task(title:"Report to Boss", time:nil)

var todayTask:[Task] = []
todayTask += [callTask, reportTask]

todayTask[1].time = 15*60
callTask.title = "Call to Toby"

print("today task = \(todayTask) \r\ncallTask = \(callTask)")

/* 2.1 - 2 Class */

struct Resolution{
    var width = 0
    var height = 0
}

class videoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name:String?
}

/* 2.1 - 4 MyApp? */

struct nalzza{
    var year:Int?
    var month:Int?
    var day:Int?
}


class diary{
    var title = nalzza()
    var content:String?
    var photo:String?
}


