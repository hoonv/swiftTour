import UIKit
// Basics


let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

var welcomeMessage: String

welcomeMessage = "Hello"

var red, green, blue: Double

var `break` = 10

let int16max = Int16.max
let intmax = Int32.max
let int32min = Int32.min
let uintmax = UInt32.max

var int8 = 10
var int16 = 10000
print(int8+int16)

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

let t1 = Int(15)

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointonefourone = 0.141
let pi = Double(three) + pointonefourone
print(pi)


let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)


if let actualNumber = Int(possibleNumber) {
    print("실제 값은 \(actualNumber)입니다")
} else {
    print("인트형으로 변환 될 수 없습니다")
}

let thepossibleString: String? = "this is optionalString"
let theforcedString: String = thepossibleString!
print(thepossibleString)
print(theforcedString)

let assumedString: String! = "an implicity unwrapped optional string."
let implicityString: String = assumedString
let implicityString1 = assumedString
print(assumedString)
print(implicityString)
print(implicityString1)
