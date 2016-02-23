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

var aValue : Int? = nil

aValue = 20

print("\(aValue)")

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