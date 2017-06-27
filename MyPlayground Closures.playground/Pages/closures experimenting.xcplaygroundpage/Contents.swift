
var closure : (String)->() = {string in print("closure var",string)}
var newClosure : (String)->(String) = { someString in print(someString)
    return "modified string by closure" + someString}

typealias lovelyClosure = ((String)->(String))?




var optionalClosure : ((String)->(String))? = {somVar in return somVar}

func oneCompletion (someParam:Bool, success:((String)->())? = nil,failure:((String)->())? = nil){
    print("OneCompletion")
    if someParam {
    success?("succ")
    }else{
    failure?("fail")
    }
}
func newoneCompletion (someParam:Bool, success:((String)->(String))? = nil,failure:((String)->(String))? = nil){
    print("newOneCompletion")
    if someParam {
        success?("succ")
    }else{
        failure?("fail")
    }
}


func aliasCompletion (someParam:Bool, success:lovelyClosure = nil,failure:lovelyClosure = nil){
    print("newOneCompletion")
    if someParam {
        success?("succ")
    }else{
        failure?("fail")
    }
}
//oneCompletion(someParam: 4) { 
//    
//    print("after completion")
//}
//oneCompletion(someParam: 5, completion: nil)


oneCompletion(someParam: true, success: closure, failure: closure)
oneCompletion(someParam: false, success: closure, failure: closure)
oneCompletion(someParam: true)
oneCompletion(someParam: true, success: { (succ) in
    print(succ)
}) { (fail) in
    print(fail)
}
newoneCompletion(someParam: true, success: newClosure, failure: newClosure)

aliasCompletion(someParam: true, success: { (sometext) -> (String) in
    print("\naliascompletion")
    print(sometext)
    return sometext
}) { (someText) -> (String) in
    return someText
}


typealias swiftfunctionAlias = (a:Int,b:Int)

func test (param:swiftfunctionAlias){
    print(param.a,param.b)
}

test(param: (3,4))

typealias  addClosure = (Int,Int) -> Int
let add : addClosure = { a,b in
return a + b }
add(3, 5)






//func example(a:Int,b:Int)-> Int {
//return a + b
//}

typealias myAlias = (Int,Int) -> Int

func example(_ handler: myAlias) {
    handler(2, 5)
}


example { (a, b) -> Int in
    return a + b
}

example { a, b in
    return a + b
}

example { a, b in a + b } // I believe that should work

example { $0 + $1 }





func example(a: Int, b: Int) -> Int {
    return a + b
}

typealias MyFunction = (Int, Int) -> Int

let testClosure: MyFunction = example
testClosure(1, 2) == 3


//new branch test A
