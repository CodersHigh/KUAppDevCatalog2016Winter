//: Playground - noun: a place where people can play

import UIKit

var title : String = "Storyboard Prototyping"
var ratings : [Int]? = nil
var supportURL : String? = nil

supportURL = "www.codershigh.com"
var bookDescription : String = "\(title)"
if ratings != nil{
    bookDescription += "has \(ratings!.count) ratings"
}
if supportURL != nil{
    bookDescription += "\r\nsupport web page: \(supportURL!)"
}

func ratingRecord (history:[Double]) -> (average:Double,min:Double, max:Double){
    var sum = 0.0, min = history[0], max = history[0]
    for value in history {
        if min > value {
            min = value
        }
        if max < value {
            max = value
        }
        sum += value
    }
    let average = sum / Double(history.count)
    return (average, min, max)
}

var Score:[Double] = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0]

let record:(Double,Double,Double)  = ratingRecord(Score)