//: [Previous](@previous)

import Foundation

var str = "H d"

//: [Next](@next)



func isValidInput(Input:String) -> Bool {
    let RegEx = "[a-zA-Z\\s]+"
    let Test = NSPredicate(format:"SELF MATCHES %@", RegEx)
    return Test.evaluate(with: Input)
}


func validateUsername(str: String) -> Bool
{
    do
    {
        let regex = try NSRegularExpression(pattern: "^[0-9a-zA-Z\\_]{7,18}$\\s", options: .caseInsensitive)
        if regex.matches(in: str, options: [], range: NSMakeRange(0, str.characters.count)).count > 0 {return true}
    }
    catch {}
    return false
}

//validateUsername(str: str)
 func isLettersOnly(value : String) -> Bool{
    for chr in value.characters {
        if (!(chr >= "a" && chr <= "z") && !(chr >= "A" && chr <= "Z")){
            debugPrint(chr)
            return false
        }
    }
    return true
}


isLettersOnly(value: str)

//
//  func formatNumberAsCurrency(number : Int64)-> String{
//    
//    let numberFormatter = NumberFormatter()
//    numberFormatter.numberStyle = .decimal
//    numberFormatter.roundingMode = .ceiling
//    
//    
//    let str = numberFormatter.string(from: NSNumber(value: number))
//    return str!
//}

    

//let x = formatNumberAsCurrency(number: Int64(Double("2122121") ?? 0))


//let value = 20000
////let formattedValue = String(format: "11212"  , fvalue)
//
//let strr = "232242123.24"
//let floatStr = String(format:"%.02f", Float64(strr)!)
//print(floatStr)
//let flNo = Float64(floatStr)
//print(flNo!)
//let numberFormater = NumberFormatter()
//numberFormater.numberStyle = .decimal
//let x = numberFormater.string(from: flNo as! NSNumber)
//print(x!)


//let floatStr = String(format:"%.02f", Float64("1234")!)
//print(floatStr)

//  func curencyFormaterFloat(number : String)-> String{
//
//    let numberFormatter = NumberFormatter()
//    numberFormatter.numberStyle = .decimal
//
//    let str = numberFormatter .string(from: NSNumber(value: number))
//    return str!
//
//}
//formatNumberAsCurrency(number: <#T##Int64#>)




//
//func currencyFormaterFloat(value : String) -> String{
////    let floatStr = String(format:"%.02f", Float64(value)!)
////    print(Float64(floatStr)!)
//    let numberFormater = NumberFormatter()
//    numberFormater.numberStyle = .currency
//    return numberFormater.string(from: NSDecimalNumber(string: value))!
//}
//
//let x = currencyFormaterFloat(value: "23224")
//print(x)
// //`i need AED 23,224.00







//
//func currencyFormaterFloat(value : String) -> String{
//    let numberFormater = NumberFormatter()
//    numberFormater.numberStyle = .currency
//    numberFormater.locale = nil
//    
//    var value = numberFormater.string(from: NSDecimalNumber(string: value))!
//    
//    
//    return value.remove(at: value.startIndex)
//}

//let x = currencyFormaterFloat(value: "23224")
//print(x)






//func currencyFormaterFloat(valueStr : String?,localeStr:String) -> String{
//    if let value = valueStr, !(valueStr?.isEmpty)!{
//        let numberFormater = NumberFormatter()
//        numberFormater.numberStyle = .currency
//        numberFormater.locale = nil
//        var value = numberFormater.string(from: NSDecimalNumber(string: value))!
//        value.remove(at: value.startIndex)
//        return localeStr + " " + value
//    }else{
//        return localeStr
//    }
//}
//debugPrint(currencyFormaterFloat(valueStr: "123", localeStr: "AED"))


func formatNumberAsCurrency(number : String)-> String{
    let value = Int64(number)
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .none
    let str = numberFormatter.string(from: NSNumber(value: value!))
    return str!
}


formatNumberAsCurrency(number: "234")
