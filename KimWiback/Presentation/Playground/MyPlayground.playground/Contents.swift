/////////////////////// Swift Play //////////////////////////
//                                  Written by Kim, Wiback,
//                           Sun, Jan 31, 2016, version 1.1.
//                           Sat, Feb 06, 2016, version 1.2.
//
/////////////////////////////////////////////////////////////



//////////////////////
// Importing packages
//////////////////////
import UIKit
import XCPlayground





/////////////////// Variable & Constant ///////////////////



///////////
// Varable
///////////

//// Type Inferencing;
// Swift will automatically infer data type (here, Int),
// but the type can also be manually verified.
var current_speed:Int = 110
current_speed += 10



////////////
// Constant
////////////
// Changing constant declared by 'let' is prohibited.
let max_speed:Int = 200





/////////////////// Strings & Numbers ///////////////////



///////////
// Strings
///////////
let name:String = "Kim, Wiback"
var greeting:String = "Hi"

//// Add and re-allocate string variable greeting.
greeting += " " + name

//// Creating a characters object by using a method (ex_1)
let characters = greeting.characters
// Using a method in the object for counting
let count = characters.count

//// Creating a URL object without using a method (ex_2)
let URL = "www.korea.ac.kr"
// Using method in the object for finding
let tf = URL.hasPrefix("http://")



///////////
// Numbers
///////////

//// Int, Uint
let int_max = Int.max
let int_min = Int.min
let uint_max = UInt.max
let uint_min = UInt.min

//// Syncronization of data types for calculation.
let pi:Double = 3.14
let divider:Int = 2
let half_pi:Double = 3.14 / Double(divider)





/////////////////// Tuples & Typealias ///////////////////



//////////
// Tuples
//////////

//// Declaring data types (declaring tuples)
let time_1 = (9, 0 , 48)
let time_2:(h:Int, m:Int, s:Int) = (11, 51, 5)
// Tuples inside a tuple
let time_3 = (time_1, time_2)
let (start, end) = time_3
let time_2_first_index = end.h



/////////////
// Typealias
/////////////

//// Declaring data types (using typealiases)
// Designing a data type
typealias time_4 = (h:Int, m:Int, s:Int)
// Data types inside another data type
typealias time_5 = (start:time_4, end:time_4)
// Constant 'today' gets the typealias as it's data type.
let today:time_5 = ((9, 0, 48), (11, 51, 5))
print("The timed you have asked: \(today.end.h)\'o clock.")





////////////////////// Collections //////////////////////



//////////
// Arrays
//////////

//// Declaring data types (declaring arrays)
var sample_str_array:Array<String> = ["a", "b", "c", "d"]
var sample_num_array:[Int] = [0]

//// Appending
sample_str_array += ["f"]
sample_str_array.append("g")
sample_num_array += [1]
sample_num_array.append(Int(114.1))

//// Indexing (Swfit indexing starts from 0.)
sample_str_array[0]
sample_str_array.first
sample_num_array[sample_num_array.count - 1]
sample_num_array.last

//// Duplicating arrays
var duplicated_array = sample_num_array
duplicated_array += [10000]
sample_num_array += [20000]



//////////////
// Dictionary
//////////////

//// Declaring data type (declaring dictionary)
var sample_dictionary:[String:Int] = ["a":1, "b":2, "c":3, "d":4, "e":5, "f":6]

//// Appending
sample_dictionary["g"] = 7

//// Indexing
// In LazyMapCollection (see detail by clicking '+' on ->.)
let keys_tuple = sample_dictionary.keys
let values_tuple = sample_dictionary.values
// In Arrays
let keys_array = [String](sample_dictionary.keys)
let keys_value = [Int](sample_dictionary.values)



///////
// Set
///////

//// Declaring data types (declaring sets)
let set_a:Set = [1, 2, 4, "a", "b", 7]
let set_b:Set = [1, 2, 5, "c", "e", 8]

//// Set Calculations
let intersect = set_a.intersect(set_b)
let subtract = set_a.subtract(set_b)
let union = set_a.union(set_b)
let exclusiveOR = set_a.exclusiveOr(set_b)





////////////////////// Flow Control //////////////////////



//////////////////////////////////////////////
// Loops: for, while + Statements: if, switch
//////////////////////////////////////////////

//// Parameter settings 
// A dummy integer variable that will change over loops
var index_for_break:Int = 0
// A dummy string variable that will change over loops
var to_be_switched:String

//// Main while loop
while true {
    index_for_break += 1
    
    //// Main if statement
    if index_for_break < 2 {
        
        //// Main for loop
        for (alphabet, number) in sample_dictionary {
            
            //// Main switch statement
            switch number {
            case 2:
                to_be_switched = "Number is \(number), Alphabet is \(alphabet)"
            // 3 <= index <= 5
            case 3...5:
                to_be_switched = "Number is \(number), Alphabet is \(alphabet)"
            // 5 < index
            // Shorter version: case _ where number > 5:
            case let any_index where any_index > 5:
                to_be_switched = "Number is \(number), Alphabet is \(alphabet)"
            // A switch statement must cover full range of data, thus if there any unaddressed cases, squeeze all of them into default.
            default:
                to_be_switched = "Number is \(number), Alphabet is \(alphabet)"
                
            //// End of the main switch statement
            }
            
        //// End of the main for loop
            print("\(to_be_switched)")
        }
        
    //// End of the main if statement & Sub if statement
    } else if index_for_break == 2 {
        print("While loop will close within 1 second.")

    //// End of the sub if statement & Last if statement & End of the last if statement
    } else {break}

//// End of the main while loop
}





//////////////////////// Optional ////////////////////////



/////////////////////////////////////////
// Can be nothing, can be something: nil
/////////////////////////////////////////

//// Declearing optional with '?' (can be nothing, can be something.)
var movie_title:String = "Practice Swift!"
var movie_ratings:[Double]? = nil
var movie_fanclub:String? = nil



///////////////////////////////////////////
// Must be something: ! (force unwrapping)
///////////////////////////////////////////
var movie_description:String = "\(movie_title)"

//// Un-declearing optional with '!' (must be something.)
// No run since movie_ratings is nil.
if movie_ratings != nil {
    movie_description += "has \(movie_ratings!.count) ratings"
}
// Run since movie_fanclub is not nil.
movie_fanclub = "www.null.com"
if movie_fanclub != nil {
    movie_description += "\r\nfan club site: \(movie_fanclub!)"
}
// Printing
print("\(movie_description)")



////////////////////////////////////////////////////
// Using ! is not desirable (may lead to crashes.).
////////////////////////////////////////////////////

//// Optional bindings: if let (when not nil, declare.)
if let op_bind_ratings = movie_ratings {
    movie_description += "has \(op_bind_ratings.count) ratings"
}

//// Optional bindings: if var (when not nil, declare.)
movie_fanclub = "www.null.com"
if var op_bind_fanclub = movie_fanclub {
    movie_description += "\r\nfan club site: \(op_bind_fanclub)"
}
// Printing
print("\(movie_description)")

//// Implicityly unwrapped optional
// Optional acting like plain variables and constants
var op_unwrap_movie_fanclub:String! = nil
print("\(op_unwrap_movie_fanclub)")
op_unwrap_movie_fanclub = "hi"
print("\(op_unwrap_movie_fanclub)")





//////////////////////// Function ////////////////////////



///////////////////////
// No inputs & outputs
///////////////////////
func no_inputs_outputs_1() -> Void {
    print("No inputs and ouputs")
}
func no_inputs_outputs_2() {
    print("No inputs and ouputs")
}



///////////////
// Only inputs
///////////////
func only_inputs(varargin:Double) {
    print("Only inputs")
}



////////////////
// Only outputs
////////////////
func only_outputs() -> [String:Double] {
    let varargout:[String:Double] = ["a":1, "b":1, "c":3]
    print ("Only outputs")
    return varargout
}



/////////////////////////
// Both inputs & outputs
/////////////////////////
func both_inputs_outputs(varargin:Array<Double>) -> (varargout_average:Double, varargout_min:Double, varargout_max:Double) {
    // Parameter settings
    var sum:Double = 0, min = varargin[0], max = varargin[0]
    // Calculating the average, min, max
    for numbers in varargin {
        // Change to smaller numbers.
        if min > numbers {min = numbers}
        // Change to larger numbers.
        if max < numbers {max = numbers}
        // Concatenating all
        sum += numbers
        // End of the for loop
    }
    // Wrapping up
    let mean:Double = sum / Double(varargin.count)
    // Not like MATLAB, only 'data type' is important
    // (more freedom in writing a function).
    return(mean, min, max)
}



/////////////////
// Demonstration
/////////////////
no_inputs_outputs_1()
no_inputs_outputs_2()
only_inputs(1)
let sample_output_1 = only_outputs()
// Not like MATLAB, output names are strict
// (less freedom when calling a function).
let sample_input:Array<Double> = [1, 2, 3, 414, 123]
let sample_output_2 = both_inputs_outputs(sample_input)
print("mean: \(sample_output_2.varargout_average)\r\nmin: \(sample_output_2.varargout_min)\r\nmax: \(sample_output_2.varargout_max)")





///////////////////////// Structure /////////////////////////



/////////////////////////////////////////
// Instances with independent namespaces
/////////////////////////////////////////

//// Initiating a structure
struct sample_1 {
    // Declaring two optionals
    var title:String?
    var time:Int?
}

//// Instanciating
// Instanciating with initialization: #1
var task_1 = sample_1(title: "Call_1", time:60 * 10)
// Instanciating with initialization: #2
var task_2 = sample_1()
// Setting the title value after the initialization #2
task_2.title = "Call_2"

//// Copying
// Instanciating the structure within an array
var task_3:[sample_1] = []
// Copying instanciated structures
task_3 += [task_1, task_2]
// Changing after the copying does not work out.
task_2.title = "Call_3"
print("After copy: \(task_3)\nBefore copy: \(task_2)")





/////////////////////////// Class ///////////////////////////



////////////////////////////////
// Instances sharing namespaces
////////////////////////////////

//// Initiating a structure
struct sample_2 {
    var owner:Employee_1
    var participant:Employee_1?
}

//// Initiating a class
class Employee_1 {
    var name:String?
    var phone:String?
    var boss:Employee_1?
}

//// Instanciating
// Not like structure, declared parts can be changed even if class's instance is a constant.
let me:Employee_1 = Employee_1()
me.name = "Wiback"
me.phone = "02-000-0000"
let you = Employee_1()
you.name = "Who"
you.phone = "010-0000-0000"

//// Not like structure, copying does not occur, but only referencing kicks in.
let task_4 = sample_2(owner:me, participant:you)
// Changing works out with the referencing.
task_4.owner.phone = "010-0000-0000"
print(me.phone)





/////////////////////// Enumerations ///////////////////////



//////////////
// Initiating
//////////////
struct sample_3 {
    var owner:Employee_1
    var participant:Employee_1?
    
    //// Initiating enumerations
    var type:tasktype
    enum tasktype {
        // Total 4 cases
        case call
        case report
        case meet
        case support
        // Computated property will vary according to the cases.
        var typetitle:String {
            // Getting return value
            get {
                let title_string:String
                // Change title_string according to the cases.
                switch self {
                case .call:
                    title_string = "call"
                case .report:
                    title_string = "report"
                case .meet:
                    title_string = "meet"
                case .support:
                    title_string = "support"
                }
                // Returning
                return title_string
            }
        }
    }
}



/////////////////
// Demonstration
/////////////////
var task_5 = sample_3(owner:me, participant:you, type:.call)
var task_6 = sample_3(owner:me, participant:you, type:sample_3.tasktype.support)
task_5.type
task_6.type.typetitle





/////////////////////// Initializing ///////////////////////



///////////////////////////////////////////////////////
// Resetting stored property (<-> computated property)
///////////////////////////////////////////////////////

//// Initiating a structure
struct sample_4 {
    var owner:Employee_2
    var participant:Employee_2?
    // Initializing method
    init (owner:Employee_2) {
        self.owner = owner
        self.participant = nil
    }
}

//// Initiating a class
class Employee_2 {
    var name:String?
    var phone:String?
    var boss:Employee_2?
    // Initializing method
    init (name:String) {
        self.name = name
        self.phone = "010-0000-0000"
        self.boss = nil
    }
    // Initializing method why???
    convenience init(name:String, phone:String) {
        self.init(name:name)
        self.phone = phone
    }
}



/////////////////
// Demonstration
/////////////////

//// Thanks to init, to be initialized stored properties do not have to be verified every time.
let my:Employee_2 = Employee_2(name:"Kim")
var task_7 = sample_4(owner:my)
print(task_7)
print("\(my.boss)")





////////////////////////// Method //////////////////////////



///////////////////////////////////////////////////////////
// Method can be defined in Class, Structure, Enumeration.
///////////////////////////////////////////////////////////

//// Initiating a class
class Employee_3 {
    var name:String?
    var phone:String?
    var boss:Employee_2?
    // Initializing method
    init (name:String) {
        self.name = name
        self.phone = "010-0000-0000"
        self.boss = nil
    }
    // Initializing method why???
    convenience init(name:String, phone:String) {
        self.init(name:name)
        self.phone = phone
    }
    
    //// Declaring a methods
    func report() {
        if let my_boss = boss {
            print("\(self.name) reports to \(my_boss.name)")
        } else {
            print("\(name) has no boss")
        }
    }
    
    //// Funckin explanation???
    //    func calltasktoboss() -> sample_3? {
    //        if let my_boss = boss, call_to = my_boss.phone {
    //            var calltask = sample_3(owner: self, participant: nil, type: .call)
    //        return calltask
    //        }
    //        return nil
    //    }
}

//// Calling the method
// Instanciating
let I = Employee_3(name:"Kim")
I.report()





////////////////// Emun & Associated Value //////////////////



//////////////
// Initiating
//////////////
struct sample_5 {
    var owner:Employee_1
    
    //// Initiating enumerations
    var type:tasktype
    enum tasktype {
        
        ///////////////////////////
        // Adding Associated Value
        ///////////////////////////
        case call(number:String)
        case report(to:Employee_2, when:String)
        case meet(with:Employee_2, location:String)
        case support(who:Employee_2, duration:Int)
        // Computated property will vary according to the cases.
        var typetitle:String {
            // Getting return value
            get {
                let title_string:String
                // Change title_string according to the cases.
                switch self {
                case .call:
                    title_string = "call"
                case .report:
                    title_string = "report"
                case .meet:
                    title_string = "meet"
                case .support:
                    title_string = "support"
                }
                // Returning
                return title_string
                //                func calltasktoboss() -> sample_3? {
                //                    if let my_boss = boss, call_to = my_boss.phone {
                //                        var calltask = sample_3(type: .Call(number:"000"), owner: self, participant: nil)
                //                        return calltask
                //                    }
                //                    return nil
            }
            
            //// Calling the associated values
            func doBasicTask() ->String {
            let taskDescription:String
            switch type {
            case .Call(let number) :
            taskDescription = "\(owner.name) make a call to \(number)"
            case .Report(let receiver, let time) :
            taskDescription = "\(owner.name) report to \(receiver.name) at \(time)"
            case .Meet(let participant, let location) :
            taskDescription = "\(owner.name) meet \(participant.name) at \(location)"
            case .Support(let taskOwner, let duration) :
            taskDescription = "\(owner.name) support \(taskOwner.name) for \(duration) days"
            default:
            taskDescription = "Need more information for task."
            }
            return taskDescription
            }
        }
    }
}






















