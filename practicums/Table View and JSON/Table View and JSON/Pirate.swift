//
//  Pirate.swift
//  Table View and JSON
//
//  Created by Dao Bui on 24/03/16.
//  Copyright © 2016 Dao Bui. All rights reserved.
//

import Foundation
class Pirate: NSObject {
    var name:String?
    var life:String?
    var yearsActive:String?
    var countryOrigin:String?
    var comments:String?

    init(name: String!, life: String, yearsActive: String, countryOrigin: String, comments: String)  {
        self.name = name!
        self.life = life
        self.yearsActive = yearsActive
        self.countryOrigin = countryOrigin
        self.comments = comments
    }
}