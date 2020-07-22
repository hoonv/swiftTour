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

var largest = 0
for (kind, numbers) in interestingNumbers {
    print(kind, numbers)
}
print(largest)








