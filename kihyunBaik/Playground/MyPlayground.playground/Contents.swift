//var n:Int = Unit8
var year:Int = 2016
//if year==4*n{
    print("\(year)은 윤년입니다.")
//} else {
    print("\(year)은 윤년이 아닙니다.")
//}

var title : String = "Storyboard Prototyping"
var ratings : [Int]? = nil
var supportURL : String? = nil

//print ("\(title) has \(ratings!.count) ratings. \r\nsupport
//web page : \(supportURL)")

supportURL = "www.codershigh.com"

var bookDescription:String="\(title)"

if ratings != nil {
    bookDescription += "has\(ratings!.count) ratings"
}

if supportURL != nil {
    bookDescription += "\r\nsupport web page: \(supportURL)"
}

//print("\(bookDescription)")

//if let theRatings = ratings{
  //  bookDescription += "has\(theRatings.count) ratings"
//}
//if let theURL = supportURL {
    //bookDescription += "\r\nsupport web page: \(theURL)"
//}


func ratingRecord (history: [Double])->(average:Double, min:Double, max:Double){
    if history.count == 0 { return nil }

    var sum=0.0, min = history[0], max = history[0]
    for value in history{
        if min>value{min=value}
        if max<value{max=value}
        sum+=value
    }

    let average = sum / Double(history.count)
    return (average, min, max)
}

ratings = [4.5, 3.0, 5.0, 2.5]
bookDescription = "\(title)"
