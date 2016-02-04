class Athelete{
    
    var date:Int?
    var time:Int?
    var location:String?
    var part:String?
    
    var request:String?
    
}

class Request{
    enum Part{
        case abs
        case chest
        case back
        case legs
        case biceps
        case triceps
        case shoulders
        case cardio
        case wholebody
    }
    enum Location{
        case gangnam
        case dongdaemoon
        case sungbuk
        case seocho
        case gangdong
        case gangseo
        case mapo
        case jongro
    }
    
    var time:Int?
    
}

let kim:Athelete = Athelete()
kim.location = "gangnam"

let park:Athelete = Athelete()
park.location = "seocho"

var first:Athelete = kim
var second:Athelete = park

func region (first.location:[String], second.location:[String]) -> {
    if first.location == second.location{
        return second
    }
    return
}

let match = region(kim.location,park.location)

