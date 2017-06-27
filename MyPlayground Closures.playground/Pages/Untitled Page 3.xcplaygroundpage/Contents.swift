//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let digitss = [1,4,10,15,15]

print(digitss.contains(where: { (x) -> Bool in
    x == 4
}))


print(digitss.index(where: { (x) -> Bool in
    x == 15
}))

let numbers = [1, 3, 5, 7, 9]
//sum all values from the array (+)
let result = numbers.reduce(0, +)
//sum all values from the array (+) plus one
let result2 = numbers.reduce(1, +)
let result3 = numbers.reduce(1, *)

let codes = ["abc","def","ghi"]
let text = codes.reduce("", +)

let names = ["alan","brian","charlie"]
let csv = names.reduce("===") {text, name in "\(text),\(name)"}
print(csv)

//map
/*Use map to loop over a collection and apply the same operation to each element in the collection. */

let values = [2.0,4.0,5.0,7.0]
let squares = values.map {$0 * $0}
print(squares)

let scores = [0,28,124]
let words = scores.map { NumberFormatter.localizedString(from: NSNumber(value: $0),number:.spellOut) }
print(words)

//orderer from high to less
let lengthInMeters: Set = [4.0,6.2,8.9]
let lengthInFeet = lengthInMeters.map {meters in meters * 3.2808}
print(lengthInFeet)


//filter
//Use filter to loop over a collection and return an Array containing only those elements that match an include condition.

let digits = [1,4,10,15]
let even = digits.filter { $0 % 2 == 0 }
print(even)





//flatmap
//The simplest use is as the name suggests to flatten a collection of collections.
let collections = [[5,2,7],[4,8],[9,1,3]]
let flat = collections.flatMap { $0 }
print(flat)

//it knows about optionals and will remove them from a collection.
let people: [String?] = ["Tom",nil,"Peter",nil,"Harry"]
let valid = people.flatMap {$0}
print(valid)


let collection = [[5,2,7],[4,8],[9,1,3]]
let onlyEven = collection.flatMap {
    intArray in intArray.filter { $0 % 2 == 0 }
}
print(onlyEven)

//the above is transformed to
let onlyEvenSimpler = collection.flatMap { $0.filter { $0 % 2 == 0 } }


//Chaining
//sum only those numbers greater than or equal to seven
let marks = [4,5,8,2,9,7]
let results = marks.filter{$0 > 7}.reduce(0, +)

// returns only the even squares
let valuesArray = [20,17,35,4,12]
let allResults = valuesArray.map{$0 * $0}.filter{$0 % 2 == 0}
print(allResults)
