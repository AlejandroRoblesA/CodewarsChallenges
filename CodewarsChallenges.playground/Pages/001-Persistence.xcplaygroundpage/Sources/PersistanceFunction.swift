import Foundation

public func persistence(for num: Int) -> Int {
    var counter = 0
    var stringNumber = String(num)
    
    while stringNumber.count > 1 {
        counter += 1
        stringNumber = multiplyString(string: stringNumber)
    }
    return counter
}

public func multiplyString(string: String) -> String {
    var multiplication = "1"
    for digit in string {
        multiplication = String((Int(multiplication) ?? 1) * (Int(String(digit)) ?? 1))
    }
    return multiplication
}
