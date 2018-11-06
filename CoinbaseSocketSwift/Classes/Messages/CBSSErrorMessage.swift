//
//  CBSSErrorMessage.swift
//  CBSSSocketSwift
//
//  Created by Hani Shabsigh on 10/29/17.
//  Copyright © 2017 Hani Shabsigh. All rights reserved.
//

import Foundation

@objc open class CBSSErrorMessage: CBSSMessage {
    
    public let message: String
    
    public required init(json: [String: Any]) throws {
        
        guard let message = json["message"] as? String else {
            throw CBSSError.responseParsingFailure("message")
        }
        
        self.message = message
        
        try super.init(json: json)
    }
}
