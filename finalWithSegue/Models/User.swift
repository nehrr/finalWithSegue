//
//  User.swift
//  finalWithSegue
//
//  Created by Ernoul on 16/03/2018.
//  Copyright © 2018 Ernoul. All rights reserved.
//

import UIKit

class User: NSObject {
    var name: String
    var lastname: String
    var email: String
    var password: String
    
    init(_ name: String, _ lastname: String, _ email: String, _ password: String) {
        self.name = name
        self.lastname = lastname
        self.email = email
        self.password = password
    }
}
