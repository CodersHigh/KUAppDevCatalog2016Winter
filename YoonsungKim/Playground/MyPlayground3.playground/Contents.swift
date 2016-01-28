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

ratings = []

var bookDescription: String = "\(title)"

if let theRatings = ratings, record = ratingRecord(theRatings) {
    bookDescription += "has \(theRatings.count) ratings, \raverage is \(record.average), from \(record.min) to \(record.max)"
} else {
    print("There is no rating yet")
}

print("\(bookDescription)")