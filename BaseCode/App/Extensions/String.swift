//
//  String.swift
//  BaseCode
//
//  Created by  on 27/07/2023.
//

import Foundation

extension String {

    static let empty = ""
    
    private func contains(_ regex: String) -> Bool {
        let range = NSRange(location: 0, length: self.utf16.count)
        let regexTest = NSPredicate(format: "SELF MATCHES %@", regex)
            
        return regexTest.evaluate(with: self)
    }
    
    func isValidPassword() -> Bool {
        
        let isOfStandardLength = self.count >= AppConstants.standardPasswordLength
        let containsSmallLetters = self.contains(AppConstants.Regex.smallLetters)
        let containsCapitalLetters = self.contains(AppConstants.Regex.capitalLetters)
        let containsSpecialCharacters = self.contains(AppConstants.Regex.specialCharacters)
        
        return isOfStandardLength && containsSmallLetters && containsCapitalLetters && containsSpecialCharacters
    }
    
    func isValidEmail() -> Bool {
        return self.contains(AppConstants.Regex.email)
    }
    
}
