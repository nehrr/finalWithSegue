//
//  StaticUser.swift
//  finalWithSegue
//
//  Created by Ernoul on 16/03/2018.
//  Copyright © 2018 Ernoul. All rights reserved.
//

import UIKit

class StaticUser: NSObject {
    static let instance: StaticUser? = StaticUser()
    
    var user: User?
}
