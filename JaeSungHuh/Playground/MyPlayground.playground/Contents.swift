//: Playground - noun: a place where people can play

import UIKit

let greeting:String = "Hello,"

let myName = "HUH"
var names =  ["Jaesung", "Daddy"]

for name in names {
    print("\(greeting) \(name) from \(myName)")
}
print("32+64 = \(32+64)")

let maxSpeed:Int = 110
//maxSpeed += 10

var currentSpeed = 100
currentSpeed += 10
//currentSpeed = 105.7

var gpsSpeed:Double = 105.7

print("\(currentSpeed)")


let pi = 3.14
let pi_2 = 3.14/2
let divider:Double = 2
let pi_3 = 3.14/divider

let time1 = (9,0,48)
time1.0

let time2:(h:Int, m:Int, s:Int) = (11,51,5)
time2.m

let duration = (time1, time2)

let (start, end) = duration
let endHour = end.h

let today = ((9,10,23), (17,8,21))
//today는 (시작(시,분,초), 종료(시,분,초))로 구성된 튜플
print("We studied \(today.0.0, today.1.0) hours today")
//Array는 순서를 지켜서 값을 정하는 컬렉션이다.
var speedHistory:[Int] = []
speedHistory += [currentSpeed]
let gpsSpeed0901 = 114.1
speedHistory += [Int(gpsSpeed0901)]

speedHistory[0]
speedHistory.last

let historyBackup = speedHistory
speedHistory.append(150)
historyBackup

//Dictionary 는 카와 값의 쌍으로 이루어진 컬렉션이다. Array와 달리 순서가 있지 않다. 정렬기준을 주어야 순서가 정해진다.
//Set은 순서를 가지지 않은 컬렉션이다. 집합연산을 할 떄 필요하다.

let 노벨:Set = ["마루", "흑도담", "오바케", "서병장"]

var year:Int = 2015
/*
if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)  {
    print("\(year)년은 윤년입니다.")
} else  {
    print("\(year)년은 윤년이 아닙니다.")
}
*/

/*
if 문 연습

if year % 4 == 0 {
    if year % 100 == 0 {
        if year % 400 == 0 {
            print("\(year)년은 윤년입니다.")
        }else {
            print("\(year)년은 윤년이 아닙니다.")
        }
    }else {
        print("\(year)년은 윤년입니다.")
    }
}else {
    print("\(year)년은 윤년이 아닙니다.")
}
*/








