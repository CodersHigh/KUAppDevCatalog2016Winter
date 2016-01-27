//: Playground - noun: a place where people can play

import UIKit

let greeting = "Hello,"
var names = ["Hyeongu", "1", "2", "3"]
names = ["Hyeongu", "1", "2", "3", "4", "5"]

let myName = "Hyeongu"


for name in names {
    print("\(greeting) \(name) from \(myName)")
}

print("32+64 = \(32+64)")


var currentSpeed = 100
currentSpeed += 10

var gpsSpeed:Double = 105.7

let pi = 3.14
let divider:Float = 2

let pi_2 = 3.14/divider

let time1 = (9, 0, 48)
time1.0

let time2: (h:Int, m:Int, s:Int) = (11, 51, 5)
time2.h

let duration = (time1, time2)

let (start, end) = duration
let endHour = end.h
let startHour = start.0

let today = ((9, 0, 48), (11, 51, 5))

//today는 (시작(시,분,초), 종료(시, 분, 초))로 구성된 토플
print ("We studied \(today.0.0 - today.1.0) hours")



let intMax = Int.max
let UintMax = UInt.max
let intMin = Int.min
let UIntMin = UInt.min




var speedHistory:[Int] = []
speedHistory += [currentSpeed]
let gpsSpeed0901 = 114.35
speedHistory += [Int(gpsSpeed0901)]

let historybackup = speedHistory
speedHistory += [1313]
historybackup


var 가능한시간1:Set = {[10, 11, 12, 13, 14, 17, 18, 19, 20]
var 가능한시간2:Set = [8, 9, 10, 11, 12, 15, 16, 17, 18, 22, 23,24]
let 약속시간 = 가능한시간1.intersect(가능한시간2)









