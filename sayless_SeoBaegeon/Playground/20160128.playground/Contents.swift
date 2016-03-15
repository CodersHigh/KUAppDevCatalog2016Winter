//: Playground - noun: a place where people can play

import UIKit


///////옵셔널 연습


var title : String = "Storyboard Prototyping"
var ratings : [Double]? = nil
var supportURL : String? = nil
var bookDescription : String = "\(title)"

//ratings = [0,9,0]
supportURL = "www.codershigh.com"


//기존 코드
/*
if let Theratings = ratings
{
    bookDescription += "has \(Theratings.count) ratings"
}
*/

//업그레이드 코드

func setbookDescription()
{
    guard let Theratings = ratings else
    {
        return
    }
    bookDescription += "has \(Theratings.count) ratings"
}
setbookDescription()



print(bookDescription)



/////함수 연습

/*
1. record Type
2. if ratings = [], change
*/

func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double)?
{
    if history.count == 0
    {
        return nil
    }
    var sum = 0.0, min = history[0], max = history[0]
    
    for value in history
    {
        if min > value { min = value }
        if max < value { max = value }
        sum += value
    }
    
    let average = sum / Double(history.count)
    
    return (average, min, max)
}

ratings = [4.5, 3.0, 5.0, 2.5]
bookDescription = "\(title)"
if let theRatings = ratings
{
    if let record = ratingRecord(theRatings)
    {
        bookDescription += " has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)"
    }
    else
    {
        bookDescription += "has no rastings yet"
    }
}

print(bookDescription)
