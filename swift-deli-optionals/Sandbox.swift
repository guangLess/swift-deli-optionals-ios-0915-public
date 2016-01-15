//  Sandbox.swift

import Foundation

/**
 
 Declare a function named stringForDeliLine(_:) that takes one argument, an optional array of strings, and returns a optional string. Write its implementation so that it provides a readout of the names in the argument array. For an array containing the names "Al", "Chris", and "Zach" it should return a string that prints:Hint: Use an if let statement to unwrap the array optional. Define the behavior for the nil case within the associated else statement.
 For an empty array, the function should print a string saying that the line is empty and return nil,
 For a nil array optional, the function should print a string saying that the line is empty and return nil. The line is:\n1. Victoria\n2. Danny\n3. Lyel"
 <The line is:1. Victoria2. Danny3. Lyel>, got
 <The line is:1. Victoria2. Danny3. Lyel>
 func serveNextCustomerInDeliLine(deliLine:[String]?) -> [String]?{
 
 guard var deliLine = deliLine else { return nil }
 if deliLine.isEmpty { return nil }
 deliLine.removeFirst()
 return deliLine
 }
 
 */


func stringForDeliLine( deliLine : [String]? ) -> String? {
    
    guard var deliLine = deliLine else {return nil}
    
    if deliLine.isEmpty {return nil}
    
    var i = 0
    var returnString : String? = "The line is:\n"
    
    for eachLine in deliLine {
        i+=1
        returnString! += "\(i). "+"\(eachLine)"+"\n"
    }
    
    print(returnString)
    return returnString
}



/*
Declare a function named addName(_:toDeliLine:) that takes two arguments, a string name and an optional array of strings deliLine, and returns an array of strings. This method should add the name string to the deliLine array, print a welcome message for the new customer telling them their place in line (starting from one, not zero), and returns the altered deliLine array.
The function should return an array containing the string argument if the array argument is nil.

func stringForDeliLine(deliLine:[String]?) -> String? {
if let deliLine = deliLine {
var returnString = "The line is:\n"
// loop and append to returnString. No need to check if each element in the array is nil, since they can't be
}
else {
// the deliLine argument itself is nil, so print whatever you're supposed to print
return nil
}
*/

func addName( name : String ,  toDeliLine :[String]?) -> [String]? {

    var returnArray : [String]? = []
    var i = 0;
    
    if let toDeliLine = toDeliLine {
        
        for eachName in toDeliLine {
            returnArray!.append(eachName)
            i += 1
            print("Welcome \(eachName), you are at \(i) ")
        }
        returnArray!.append(name)
        
    } else {
        returnArray?.append(name)
    }
    
    return returnArray
}

//func serveNextCustomerInDeliLine(var deliLine:[String?]) -> [String?]{
//    var returnArray : [String?] = []
//
//    for eachDeli in deliLine{
//
//        if let eachDeli = eachDeli {
//            deliLine.removeFirst()
//            returnArray.append(eachDeli)
//        }
//    }
//
//    return (returnArray as Array?)!
//}
/*
Declare a function named serveNextCustomerInDeliLine(_:) which takes one argument, an optional array of strings, and returns an optional array of strings. The function should remove the first name from the array (there is a removeFirst() array method, but it cannot be called on an empty array), print a message for this "next customer" telling them it is their turn, and returning the array with the customer's name removed.

If the array argument is nil or empty, this function should print a string saying that the line is empty and return nil.
*/

func serveNextCustomerInDeliLine(deliLine:[String]?) -> [String]?{
    
    guard var deliLine = deliLine else { return nil }
    
    if deliLine.isEmpty { return nil }
    
    deliLine.removeFirst()
    
    return deliLine
}


