//
//  Email.swift
//  BaseCode
//
//  Created by BrainX Technologies 11 on 11/09/2023.
//

import Foundation

@propertyWrapper
class Email {
    
    private var email: String = ""

    var wrappedValue: String {
        get { email }
        set(newValue) {
            if email.isValidEmail() {
                email = newValue
            }
        }
    }
  
}
