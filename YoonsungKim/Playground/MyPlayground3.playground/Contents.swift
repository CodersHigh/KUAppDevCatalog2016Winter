//: Playground - noun: a place where people can play

import UIKit

var title:String = "Storyboard Prototyping"
var ratings : [Double]? = nil
var supportURL : String? = nil

ratings = [4.5]

print("There are \(ratings) ratings")

if let opRate = ratings {
    print("There are \(ratings) ratings")
} else {
    print("ratings is nil")
}

var value = "234"

func findStockCode(company : String) -> String? {
    
    if (company == "Apple") {
        return "AAPL"
    } else if (company == "Google") {
        return "GOOG"
    }
    return nil
}

var stockCode:String? = findStockCode("Facebook")
let text = "Stock Code - "

if let stockCode = stockCode {
    let message = text + stockCode
    print("\(message)")
}

print("\(stockCode)")

let optionalEmail: Int? = 20
let requiredEmail: String? = "Hi"
let a = optionalEmail

if let v = optionalEmail where v > 10 {
    print("\(v)")
}

func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double) {
    
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

ratings = []

var bookDescription: String = "\(title)"

if let theRatings = ratings where theRatings != []{
    let record = ratingRecord(theRatings)
    bookDescription += "has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)"
}

print("\(bookDescription)")