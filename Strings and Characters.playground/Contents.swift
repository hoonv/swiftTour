import UIKit

var str = "Hello, playground"


let someString = "Some String"

let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""


let quotation1 = """
hello
world
"""

let quotation2 = """
hello \
world
"""
print(quotation1)
print(quotation2)
let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""

print(singleLineString)
print(multilineString)
let lineBreaks = """

This string starts with a line break.
It also ends with a line break.
s
"""

print(lineBreaks)


let lineWithIndentation = """
    hello, world!
        hello, swift
"""
print(lineWithIndentation)
