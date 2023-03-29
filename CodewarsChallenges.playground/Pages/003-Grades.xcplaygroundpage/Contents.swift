/*:
 [Previous](@previous)
 The University has the following
 grading policy
 Every student receives a grade in the inclusive range from O to 100
 Any grade less than 40 is a falling
 grade
 Sam is a professor at the university and
 likes to round each student's grade
 according to these rules:
 If the difference between the grade
 and the next multiple of 5 is less than
 3, round grade up to the next multiple
 of 5.
 If the value of grade is less than 38, no rounding occurs as the result will still be a failling grade.
 Examples:
 Grade=84 round to 85 (85-84 is less
 than 3)
 Grade=29 do not round (result is less
 than 40)
 Grade=57 do not round (60-57 is 3 or
 higher)
*/

import Foundation

func studentsRounding(grades: [Int]) -> [Int] {
    var finalGrades = [Int]()
    for i in 0..<grades.count {
        finalGrades.append(gradesRounded(number: grades[i]))
    }
    return finalGrades
}

func gradesRounded(number: Int) -> Int {
    return (number < 38 || number % 5 < 3) ? number : number + (5 - number % 5)
}

let grades = [73, 67, 38, 33, 0, 100, 59, 54]
print(studentsRounding(grades: grades))

//: [Next](@next)
