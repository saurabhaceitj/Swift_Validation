//
//  Validation.swift
//  Validation
//
//  Created by Saurabh on 05/06/17.
//  Copyright © 2017 Aryavrat Infotech. All rights reserved.
//

import Foundation

struct Regex {
    static let userNameRegex   = "^[a-zA-Z ]{3,30}$"
    static let phoneRegex      = "^([0-9]{10,13})$"
    static let passwordRegex   = "^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{6,30}$"
    static let emailRegex      = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$"
    static let emailPhoneRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$|^([0-9]{10,13})$"
}

extension String {
    
    var isValidUserName:Bool {
            return testThe(regex: Regex.userNameRegex)
    }
    
    var isValidMobileNumber: Bool {
            return testThe(regex: Regex.phoneRegex)
        }
    
    var isValidPassword:Bool {
            return testThe(regex: Regex.passwordRegex)
    }
    
    var isValidEmailId:Bool {
            return testThe(regex: Regex.emailRegex)
    }
    
    var isValidEmailAndNumber:Bool {
        return testThe(regex: Regex.emailPhoneRegex)
    }
    
    func testThe(regex:String) -> Bool {
     if self.characters.count > 0 {
        let predicate = NSPredicate(format: "SELF MATCHES %@",regex)
        return predicate.evaluate(with: self.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines))
        }
       return false
    }
}
