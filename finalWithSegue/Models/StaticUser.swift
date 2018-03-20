//
//  StaticUser.swift
//  finalWithSegue
//
//  Created by Ernoul on 16/03/2018.
//  Copyright © 2018 Ernoul. All rights reserved.
//

import UIKit

class StaticUser {
    static let instance: StaticUser = StaticUser()
    
    var name: String = ""
    var lastname: String = ""
    var email: String = ""
    var password: String = ""
}
