import Foundation
import Cocoa

var studentName: String? = "Sundar"

let mark1 = 85
let mark2 = 78
let mark3 = 84

func calculateAverage(m1: Int, m2: Int, m3: Int) -> Double {
    return Double(m1 + m2 + m3) / 3.0
}

func getGrade(for average: Double) -> String {
    if average >= 90 {
        return "A"
    } else if average >= 75 {
        return "B"
    } else if average >= 60 {
        return "C"
    } else {
        return "Fail"
    }
}
if let name = studentName {
    let avg = calculateAverage(m1: mark1, m2: mark2, m3: mark3)
    let grade = getGrade(for: avg)

    print("Student: \(name)")
    print("Average Marks: \(String(format: "%.2f", avg))")
    print("Grade: \(grade)")
} else {
    print("Student name not available.")
}
