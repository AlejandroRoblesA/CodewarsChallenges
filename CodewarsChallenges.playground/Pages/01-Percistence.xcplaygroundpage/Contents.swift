//: [Previous](@previous)

import Foundation

//Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
//
//For example (Input --> Output):
//
//39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
//999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
//4 --> 0 (because 4 is already a one-digit number)

func persistence(for num: Int) -> Int {
    var counter = 0
    var stringNumber = String(num)
    
    while stringNumber.count > 1 {
        counter += 1
        stringNumber = multiplyString(string: stringNumber)
    }
    return counter
}

func multiplyString(string: String) -> String {
    var multiplication = "1"
    for digit in string {
        multiplication = String((Int(multiplication) ?? 1) * (Int(String(digit)) ?? 1))
    }
    return multiplication
}

//multiplyString(string: "39")

persistence(for: 1)

//: [Next](@next)
