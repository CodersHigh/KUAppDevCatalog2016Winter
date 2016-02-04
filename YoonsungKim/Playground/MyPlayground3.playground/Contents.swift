//: Playground - noun: a place where people can play

import UIKit

var title:String = "Storyboard Prototyping"
var ratings : [Double]? = nil
var supportURL : String? = nil

func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double)? {
    
    if history == [] { return nil }
    
    var sum = 0.0, min = history[0], max = history[0]
    
    for value in history {
        if min > value {
            min = value
        } else if max < value {
            max = value
        }
        
        sum += value
    }
    
    return (sum/Double(history.count), min, max)
}
0
ratings = []

var bookDescription: String = "\(title)"

if let theRatings = ratings, record = ratingRecord(theRatings) {
    bookDescription += "has \(theRatings.count) ratings, \raverage is \(record.average), from \(record.min) to \(record.max)"
} else {
    print("There is no rating yet")
}

print("\(bookDescription)")

var base = 2
var power = 9
var answer = 1

for _ in 1...power {
    answer *= base
}

for ch in "HELLO".characters{
    print(ch)
}

for (idx,ch) in "HELLO".characters.enumerate() {
    print("index : " + String(ch))
}
var ch = "0"

switch ch {
case "a":
    "match"
default:
    "unmatch"
}

var strInput = "Swift is very fast"
var strOutput = ""

for ch in strInput.characters {
    switch ch {
        case " ": fallthrough
    default :
        strOutput.append(ch)
    }
}

strOutput

func greet(name:String, day:String) -> (String)
{
    return "Hello \(name), today is \(day)"
}

greet("Kathy", day: "Wednesday")

func getPersonInfo() -> (Int, String, Int)
{
    return (27,"홍길동", 106)
}

getPersonInfo()

func swap(p1:Int, p2:Int) -> (Int, Int)
{
    return (p2, p1)
}

swap(12, p2: 15)

func greeting()
{
    print("hello")
}

func greeting(name:String)
{
    print("\(name) hello")
}

func greeting(no name:String)
{
    print("\(name) hello????")
}


greeting()
greeting("홍길동")
greeting("홍길순")
greeting(no: "호이")

func swap(n1:Int, n2:Int) -> (Int, Int)
{
    return (n2, n1)
}

var n1 = 10, n2 = 20

(n1, n2) = swap(n1, n2: n2)

n1
n2








