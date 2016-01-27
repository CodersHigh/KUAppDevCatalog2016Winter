//: Playground - noun: a place where people can play

import UIKit

let time1 = (9,0,48)
time1.2

let time2 : (h:Int, m:Int, s:Int) = (11,51,5)
time2.h

let duration = (time1, time2)
let (start, end) = duration
let endHour = end.h

typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)

let today = ((9,10,23), (17,8,21))
print("We studied \(today.1.0 - today.0.0) hours today")

let today2:Duration = ((9,10,23), (17,8,21))
print("We studied \(today2.end.h - today2.start.h) hours today")

var meetingRooms:Array<String> = ["Banksy", "Rivera", "Kahlo", "Picasso", "Cezanne", "Matisse"]
var groups:[Int] = [10,8,14,9]

meetingRooms += ["Renoir"]

var speedHistory:[Int] = []
var currentSpeed = 110
speedHistory += [currentSpeed]
let gpsSpeed0901 = 114.1
//speedHistory.append(Int(gpsSpeed0901))
speedHistory += [Int(gpsSpeed0901)]

speedHistory[0]
speedHistory.last

let historyBackup = speedHistory
speedHistory += [150]
historyBackup

var roomCapacity:[String:Int] = ["Banksy":4, "Rivera":8, "Kahlo":8, "Picasso":10, "Cezanne":20, "Matisse":30]

roomCapacity["Renoir"] = 40
roomCapacity["Kahlo"] = 40

let roomNames = [String](roomCapacity.keys)
let capacities = [Int](roomCapacity.values)

let subway2:Set = ["시청","을지로입구","을지로3가","을지로4가","동대문역사문화공원","신당","상왕십리","왕십리","한양대","뚝섬","성수","건대입구","구의","구의"]
let subway3:Set = ["경복궁","안국","종로3가","을지로3가","충무로","동대입구","약수","금호","옥수","압구정","신사","잠원","고속터미널","교대","남부터미널","양재","매봉","도곡","대치"]

subway2.count
subway3.count

let transfer = subway2.intersect(subway3)
transfer.count

let notTransfer = subway2.subtract(subway3)
notTransfer.count

let union = subway2.union(subway3)
union.count

let exOR = subway2.exclusiveOr(subway3)
exOR.count

if transfer.count > 4 {
    print("So many transfer station")
} else if transfer.count > 0 {
    print("Transfer station is \(transfer)")
} else {
    print("There is no transfer station")
}

for station in subway2 {
    print("This station is \(station)")
}

for i in 0...3 {
    print("\(i+1) 번째 회의실은 \(roomNames[i])입니다.")
}

let nowList:[String:Int] = ["씻기":1,"아침 밥":2,"옷 입기":3,"가방 챙기기":4]
let doList:Array<String> = ["주중 아침","주말 아침","퇴근후 집에 돌아와서"]

for (roomName, capacity) in roomCapacity {
    print("\(roomName)의 정원은 \(capacity) 명 입니다.")
}

for (roomName, capacity) in roomCapacity {
    let roomDescription:String
    switch capacity {
    case 4:
        roomDescription = "\(roomName)은 스터디 룸이며 정원은 \(capacity) 명 입니다."
    case 5...10:
        roomDescription = "\(roomName)은 팀 세미나 룸이며 정원은 \(capacity) 명 입니다."
    case 11...30:
        roomDescription = "\(roomName)은 그룹 세미나 룸이며 정원은 \(capacity) 명 입니다."
    case _ where capacity > 30:
        roomDescription = "\(roomName)의 정원은 \(capacity) 명이며 별도의 신청이 필요합니다."
    default:
        roomDescription = "\(roomName)의 정보를 다시 확인해 주세요"
    }
    print("\(roomDescription)")
}


var year:Int = 2204


/* Bool 변수 안 이용

if year % 4 == 0 {
    if year % 100 == 0 {
        if year % 400 == 0 {
            print("\(year)은 윤년입니다.")
        } else {
            print("\(year)은 윤년이 아닙니다.")
        }
    } else {
        print("\(year)은 윤년입니다.")
    }
} else {
    print("\(year)은 윤년이 아닙니다.")
}*/


// Bool 변수 이용
var leapYear:Bool = true
if year % 4 == 0 {
    if year % 100 == 0{
        if year % 400 != 0 {
            leapYear = false
        }
    }
} else {
    leapYear = false
}

if leapYear == true {
    print("\(year)년은 윤년입니다.")
} else {
    print("\(year)년은 윤년이 아닙니다.")
}

var title : String = "Storyboard Prototyping"
var ratings : [Int]? = nil
var supportURL : String? = nil

supportURL = "www.korea.ac.kr"

var bookDescription:String = "\(title)"
if ratings != nil {
    bookDescription += "has \(ratings!.count) ratings"
}
if supportURL != nil {
    bookDescription += "\r\nsupprot web page : \(supportURL!)"
}

print("\(bookDescription)")

 













