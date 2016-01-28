//: Playground - noun: a place where people can play

import UIKit

var greeting="Hello,"
var name="Seongkwan"
print("\(greeting) \(name)")
print("32+64 = \(32+64)")

let myName="Seongkwan"

var maxSpeed=105.7
maxSpeed/=10
print (maxSpeed)

let time1 = (9,0,48)
let time2:(h:Int, m:Int, s:Int) = (11,51,5)

let duration = (time1, time2)

var meeting:[Int:String]=[1:"one"]
print (meeting)

var Tab:[String] = ["Question","download","contents","mypage"]
var IDpassword:[String:String] = ["Enfanterrible":"123afsakdf", "hbk5844":"1234"]

let transfer: Set = ["약수","동대문역사문화공원"]
if transfer.count>0 {
    print("환승역은 \(transfer) 입니다")
} else {
    print("환승역은 없습니다.")
}

for station in transfer {
    print("이번 역은 \(station)입니다.")
}
for i in 0...4{
    print (i)
}

let year:Int = 2016
if year % 400 == 0{
    print ("윤년")}
else if year % 100 == 0{
    print ("평년")}
else if year % 4 == 0{
    print ("윤년")}
