//: Playground - noun: a place where people can play

import UIKit

let greeting = "Hello"
var names = ["john", "Tom", "chris", "sam"]
let myname = "KooJungWoo"

print("25+63 = \(25+63)")

for name in names{
print("\(greeting) \(name) I'm \(myname)")
}

let maxSpeed:Int = 110
var currentSpeed = 100
currentSpeed += 10
//currentSpeed = 100.5

var gpsspeed:Double = 105.6

print("\(currentSpeed)")

let pi = 3.14
let divider:Double = 2
let pi_2 = 3.14/divider

print("\(pi_2)")

let intMax = Int.max
let intMin = Int.min
let UintMax = UInt.max
let UintMin = UInt.min

print("\(intMax), \(intMin), \(UintMax), \(UintMin)")

//tuple
let time1 = (9,0,48)
print("\(time1.0)")
let time2:(h:Int, m:Int, s:Int) = (11,51,5)
let duration = (time1, time2)
let (start, end) = duration
let endHour = end.h
let startHour = start.0
print("\(endHour), \(startHour)")

typealias Time = (h:Int, m:Int, S:Int)
typealias Duration = (start:Time, end:Time)

let today:Duration = ((9,10,23),(17,8,21))
print("We studied \(today.end.h-today.start.h) hours today")

//array
var meetingRooms:Array<String> = ["Banksy", "Rivera", "Kahlo", "Picasso", "Cezanne", "Matisse"]
var groups:[Int] = [10,8,14,9]
meetingRooms += ["Renoir"]


var speedHistory:[Int] = []
speedHistory+=[currentSpeed]
let gpsSpeed0901 = 114.1
speedHistory.append(Int(gpsSpeed0901))
// or speedHistory+=[Int(gpsSpeed0901)]
speedHistory[0]
speedHistory.last

//dictionary  key와 값 으로 정의되어있다
var roomCapacity:[String:Int] = ["Banksy":4, "Rivera":8, "Kahlo":8, "Picasso":10, "Cezanne":20, "Matisse":30]
//roomcapacity += ["Renoir":40] 에러
roomCapacity["Renoir"] = 40 // 원래 있었으면 바꿈, 없었으면 추가
let roomName = roomCapacity.keys
let capacity = roomCapacity.values

//set

//intersect :교집합
//subtract :교집합뺀거
//union :합집합
//exclusiveOr:합집합-교집합

//fitpair앱 데이터 정리
var TrainingParts:[String:String] = ["KaiGreene":"chest", "PhilHeath":"legs", "RonnieColeman":"back", "DorianYates":"shoulders", "ArnoldSchwarzenegger":"arms"]


//흐름제어
// if,for
for (roomName, capacity) in roomCapacity{
    print("\(roomName)의 정원은 \(capacity)명 입니다")
}

//switch
for (roomName, capacity) in roomCapacity {
    let roomDescription:String
    switch capacity{
    case 4:
        roomDescription = "\(roomName)은 스터디 룸이며 정원은 \(capacity)명입니다."
    case 5...10:
        roomDescription = "\(roomName)은 팀 세미나 룸이며 정원은 \(capacity)명입니다"
    case 11...30:
        roomDescription = "\(roomName)은 그룹 세미나 룸이며 정원은 \(capacity)명입니다"
    case let caseCapacity where caseCapacity > 30 :
        roomDescription = "\(roomName)의 정원은 \(capacity)명이며 별도의 사용신청이 필요합니다"
    default:
        roomDescription = "\(roomName)의 정보를 다시 확인해주세요"
    }
    print("\(roomDescription)")
}

//처음에 윤년의 여부를 알고 싶은 연도 변수선언
// if를 중첩문으로 세개사용 4,100,400으로 나눴을 때의 나머지가 0인지 참/거짓으로 윤년의 조건 생성
// if문을 label을 하여 조건에 맞는 출력을 하면 루프를 빠져나온다
let year:Int = 2200

first : if year % 4 == 0 { //label하여 break를 할 수 있도록 한다
    if year % 100 == 0 {
        if year % 400 == 0 {
            print("\(year)은 윤년입니다")
            break first
        }
        print("\(year)은 평년입니다")
        break first
    }
    print("\(year)년은 윤년입니다")
    break first
}

//optional
var title : String = "Storyboard Prototyping"
var ratings : [Int]? = nil
var supportURL : String? = nil

//강제 언래핑(!)을 하여 크래시가 난다
//print ("\(title) has \(ratings!.count) ratings. \r\nsuppport web page : \(supportURL)")

//optional binding
supportURL = "www.codershigh.com"
var bookDescription:String = "\(title)"

if ratings != nil {
    bookDescription += "has \(ratings!.count) ratings"
}
if supportURL != nil {
    bookDescription += "\r\nsupport web page: \(supportURL!)"
}

print("\(bookDescription)")
