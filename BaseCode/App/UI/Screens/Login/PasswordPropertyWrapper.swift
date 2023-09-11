//
//  PasswordPropertyWrapper.swift
//  BaseCode
//
//  Created by BrainX Technologies 11 on 11/09/2023.
//

import Foundation

@propertyWrapper
class Password {
    
    typealias ValidationResult = (isValid: Bool, message: String)?
    
    // MARK: - Instance Properties
    
    private var password: String = ""
    
    var wrappedValue: String {
        get { password }
        set(newValue) {
            if newValue.isValidPassword() {
                password = newValue
            }
        }
    }
    
    // MARK: - Helper Methods
    
    private func validatePassword() -> ValidationResult? {
        
        let isOfStandardLength = password.count >= AppConstants.standardPasswordLength
        let containsSmallLetters = password.contains(AppConstants.Regex.smallLetters)
        let containsCapitalLetters = password.contains(AppConstants.Regex.capitalLetters)
        let containsSpecialCharacters = password.contains(AppConstants.Regex.specialCharacters)
        
        var result: ValidationResult?
        
        if !isOfStandardLength {
            result = (false, AppConstants.Message.eightCharacters)
        } else if !containsSmallLetters {
            result = (false, AppConstants.Message.smallCharacter)
        } else if !containsCapitalLetters {
            result = (false, AppConstants.Message.capitalLetter)
        } else if !containsSpecialCharacters {
            result = (false, AppConstants.Message.specialCharacter)
        }
        
        return result
    }
    
}
