import Foundation

var userName: String = "Sundar"
var userAge: Int = 22
var userEmail: String = "sundar@example.com"


print("Hello, \(userName)! You are \(userAge) years old. We will reach you at \(userEmail).")

func getUserSummary(name: String, age: Int) -> String {
    return "\(name) is \(age) years old."
}


let summary = getUserSummary(name: userName, age: userAge)
print(summary)
