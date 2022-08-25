import UIKit
public struct ToastMe {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    public func isValidEmail(emailText: String) -> Bool {
        if(emailText.count > 0) {
            var isEmail: Bool {
                do {
                    let regex = try NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}", options: .caseInsensitive)
                    return regex.firstMatch(in: emailText, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, emailText.count)) != nil
                } catch {
                    return false
                }
            }
            if(isEmail == true) {
                return true
            } else {
                return false
            }
        }
        return false
    }
    
    public func isValidMobileNumber(mobileNumberText: String) -> Bool {
        if(mobileNumberText.count > 0) {
            var isPhoneNumber: Bool {
                let PHONE_REGEX = "^[0-9]{8,13}$"//^[789]\\d{9}$
                let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
                let result =  phoneTest.evaluate(with: mobileNumberText)
                return result
            }
            if(isPhoneNumber == true) {
                return true
            } else {
                return false
            }
        }
        return false
    }
}


