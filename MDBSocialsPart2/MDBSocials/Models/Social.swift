//
//  Social.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 10/5/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//
import Foundation
import UIKit

class Social {
    var eventName: String?
    var date: Date?
    var dateString: String?
    var image: UIImage?
    var creatorName: String?
    var RSVPList: [String]?
    
    init(eventName: String, date: Date?, image: UIImage, creatorName: String) {
        self.eventName = eventName
        self.date = date
        self.creatorName = creatorName
        self.image = image
        self.RSVPList = [String]()
    }
    
}
