//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double) {
    var sum = 0.0, min = history[0], max = history[0]
    for value in history {
        if min > value { min = value }
        if max < value { max = value }
        sum += value
    }
    
    let average = sum / Double(history.count)
    return (average, min, max)
}

var title = "Hi"

ratings = [4.5, 3.9, 5.0, 2.5]

bookDesciption = "\(title)"

if let theRatings = ratings {
    let record = ratingRecord(theRatings)
    bookDesciption += "has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)"
}