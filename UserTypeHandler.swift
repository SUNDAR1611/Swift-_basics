import Foundation
func showWelcomeBanner() {
    print("\n User Access Panel")
    print("═══════════════════════════")

    print("welcome")
}
func showRoleMessage(for type: String) {
    switch type.lowercased() {
    case "admin":
        print(" Welcome, Admin! You have full access to the system.")
        print("  You can manage users, content, and settings.")
    case "guest":
        print(" Hello, Guest! You have limited browsing access.")
        print(" Some features are restricted.")
    case "project_managerr":
        print("  Hi, Editor! You can add or modify content.")
        print("Publishing rights granted.")
    default:
        print("Unknown user type. Please contact support.")
    }
}
func getCurrentTime() -> String {
    let formatter = DateFormatter()
    formatter.timeStyle = .short
    return formatter.string(from: Date())
}

showWelcomeBanner()

print("\n Enter your phone number:")
let userPhoneNumber = readLine()

if let phone = userPhoneNumber, !phone.isEmpty {
    print(" Phone Number Recorded: \(phone)")
} else {
    print(" No phone number entered.")
}

print("\n Enter your user type (admin / guest / editor):")
let userType = readLine() ?? ""

print("\n  Checking access at \(getCurrentTime())...")
showRoleMessage(for: userType)

func showRoleMessage(for type: String) {
    switch type.lowercased() {