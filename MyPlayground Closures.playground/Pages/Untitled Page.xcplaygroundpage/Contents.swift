//
//  Playground.playground
//  XLPagerTabStrip
//
//  Copyright © 2016 Xmartlabs SRL. All rights reserved.
//

//: Playground - noun: a place where people can play

import UIKit



var str = "Hello, playground"

let arrOne = [1,2,3,4,5]
let dic =  [2:[["a"],["b"]],3:[["a"],["c"]]]
let arrInt = [[1,2],[3,4,nil]]

let filterArr = arrOne.filter { (x) -> Bool in
    x == 2
}


let test = arrInt.flatMap { (y) in
    y.flatMap({ (x) in
        x
    })
    }

let names = ["alan","brian","charlie"]
let csv = names.reduce("") {text, name in "\(text),\(name)"}
print(csv)

//let csvv = names.reduce("", +)
let csvv = names.reduce("qqq  ") { (x, y)  in
    x + y
}

print(csvv)

let mc = arrOne.reduce(0,{$0+$1})

print("rc",mc)


let mc1 = arrOne.reduce(0) { (x , y)  in
    x + y
}
print(mc1)
print(arrOne.map{ $0 * $0}
)


//let mapArr = filterArr.map { (y) in
//    y
//}
//print(test)
//debugPrint(mapArr)


