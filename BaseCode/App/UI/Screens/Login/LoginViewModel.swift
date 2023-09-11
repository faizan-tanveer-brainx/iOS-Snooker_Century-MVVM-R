//
//  LoginViewModel.swift
//  BaseCode
//
//  Created by BrainX Technologies 11 on 11/09/2023.
//

import Foundation

class LoginViewModel: ViewModel {
    
    typealias ValidationResult = (isValid: Bool, message: String)
    
    // MARK: - Instance Properties
    
    var email: String = ""
    var password: String = ""

    // MARK: - Instance Methods
    
    func validateCredentials() -> ValidationResult? {
        
        var result: ValidationResult? = nil
        
        if !email.isValidEmail() {
            result = (false, AppConstants.Message.invalidEmail)
        } else if password.count < AppConstants.standardPasswordLength {
            result = (false, AppConstants.Message.invalidPassword)
        }
        
        return result
    }
}
