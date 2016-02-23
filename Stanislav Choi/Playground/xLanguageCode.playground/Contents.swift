//: Playground - noun: a place where people can play

import UIKit

class User {
    let name : String = "Stanislav"
    var id : String = "statelo"
    let password : String = "abcdf12345"
    var email : String = "statelo1992@gmail.com"
    let country : String = "Uzbekistan"
    let nativeLanguage : String = "Russian"
}

var words : Array<String> = ["Appropriate", "Bear", "Close", "Definition", "Enumeration", "Finish"]

let account = User()
print(account.password)
print(words[0])

