//
//  SocialsUser.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 10/5/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import Foundation

class SocialsUser {
    var username: String?
    var email: String?
    var fullName : String?
    
    init(username: String, email: String, fullName: String) {
        self.username = username
        self.email = email
        self.fullName = fullName
    }
}
