//
//  AppConstants.swift
//  BaseCode
//
//  Created by BrainX Technologies 11 on 11/09/2023.
//

import Foundation

class AppConstants {
    
    static let standardPasswordLength = 8
    
    struct Message {
        static let passwordMustContainAtLeast = "password must contain atleast"
        static let specialCharacter = "\(passwordMustContainAtLeast) a special character"
        static let smallCharacter = "\(passwordMustContainAtLeast) a small letter"
        static let capitalLetter = "\(passwordMustContainAtLeast) a capital letter"
        static let eightCharacters = "\(passwordMustContainAtLeast) 8 characters"
        static let invalidEmail = "Invalid Email"
        static let invalidPassword = "Invalid Password"
    }
    
    struct Regex {
        static let email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        static let capitalLetters = ".*[A-Z].*"
        static let smallLetters = ".*[a-z].*"
        static let specialCharacters = ".*[!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>\\/?].*"
    }
}
