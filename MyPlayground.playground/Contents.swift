import UIKit

var str = "Hello, playground"



let myConstant: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)


let apples = 3
let oranges = 3
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) fruites"

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

var shoppingList = ["apple", "orange", "kiwi"]
print(shoppingList[0])

shoppingList.append("hellow")

let emptyArray = [String]()
print(emptyArray)

var emptyDictionary = [String:Int]()
emptyDictionary["Hello"] = 12
print(emptyDictionary)
emptyDictionary.first


let individualScores = [75, 12, 32, 43, 65]
var tempScore = 0

for score in individualScores {
    if score > 50 {
        tempScore += 10
    } else {
        tempScore += 3
    }

}
print(tempScore)

var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "bye"
}

let nickname: String? = nil
let fullname: String = "John"
let info: String = "hi \(nickname ?? fullname)"


let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
// Prints "Is it a spicy red pepper?"


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

//var largest = 0
//for (kind, numbers) in interestingNumbers {
//    print(kind, numbers)
//}
//print(largest)

for i in 1...4 {
    print(i)
}


func greet (_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}


let temp: String = greet("adf", on: "sdf")
print(temp)


func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// Prints "120"
print(statistics.1)
// Prints "120"


func returnfifteen() -> Int {
    var y : Int = 5
    
    func add() {
        y += 10
    }
    add()
    return y
}

returnfifteen()

func makeIncrementer() -> ((Int) -> Int) {
    func add(number: Int) -> Int {
        return 1 + number
    }
    return add
}

var temp1 = makeIncrementer()
temp1(7)


var numbers = [20, 19, 7, 12]

numbers.map({ (number: Int) -> Int in
    var result = number
    if number % 2 == 1 {
        result = 0
    }
    return result
})

var sortedNumbers = numbers.sorted{ $0 < $1 }
print(sortedNumbers)









