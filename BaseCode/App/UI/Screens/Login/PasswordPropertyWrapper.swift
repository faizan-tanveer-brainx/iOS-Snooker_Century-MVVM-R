//
//  PasswordPropertyWrapper.swift
//  BaseCode
//
//  Created by BrainX Technologies 11 on 11/09/2023.
//

import Foundation

@propertyWrapper
class Password {
    
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

}
