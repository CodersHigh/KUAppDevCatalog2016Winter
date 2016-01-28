//: Playground - noun: a place where people can play

import UIKit

let str = "Hello, playground"
print(str)


let myname = "Hwnase"

var greeting:String = "Hello"
var names = ["Hwnase Bae", "Shihwa", "Bart", "Juseong"]

for name in names {print("\(greeting)! \(name) from \(myname)")}

print("32+96 = \(32+64)")

let maxspeed:Int = 110
//maxspeed += 10

var currentspeed = 100
currentspeed += 10

var gpsSpeed:Double = 105.7
print("\(currentspeed)")


let pi = 3.14
let divider = 2.0
let pi_2 = 3.14/divider

let intMax = Int.max
let UintMax = UInt.max
let intMin = Int.min
let UintMin = UInt.min

let time1 = (9, 0, 48)
time1.0
let time2:(h:Int, m:Int, s:Int) = (11,51,5)
time2.h
let duration = (time1, time2)
let (start, end) = duration
let endHour = end.h

//typealias Time = (h:Int, m:Int, s:Int)
//typealias Duration = (start:Time, end:Time)


//print("We studied until \(today.end.h - today.start.h) hours today")

let today = ((9,2,13), (17,7,21))
print("We studied \(today.1.0 - today.0.0) hours \(today.1.1 - today.0.1) minutes and \(today.1.2 - today.0.2) seconds today")

var meetingRooms:Array<String> = ["Banksy", "Rivera", "Kahlo", "Picasso", "Cezanne", "Matisse"]
var groups:[Int] = [10, 8, 14, 9]
meetingRooms += ["Renoir"]

var speedHistory:[Int] = []
speedHistory += [currentspeed]

let gpsSpeed0901 = 114.1
speedHistory.append(Int(gpsSpeed0901))
speedHistory += [Int(gpsSpeed0901)]

speedHistory[0]
speedHistory[1]
speedHistory.last

let historyBackup = speedHistory
speedHistory += [150]
historyBackup

var roomCapacity:[String:Int] = ["Banksy":4, "Rivera":8, "Kahlo":8, "Picasso":10, "Cezanne":20, "Matisse":30]
roomCapacity["Renoir"] = 40
roomCapacity["Kahlo"]

let roomNames = [String](roomCapacity.keys)
let capacities = [Int](roomCapacity.values)




