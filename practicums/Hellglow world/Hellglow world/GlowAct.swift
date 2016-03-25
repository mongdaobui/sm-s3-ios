//
//  GlowAct.swift
//  Hellglow world
//
//  Created by Dao Bui on 03/03/16.
//  Copyright © 2016 Dao Bui. All rights reserved.
//

import Foundation

class GlowAct {
    var name: String
    var rating: Int
    var startTime: String
    
    init(name:String, rating:Int, startTime:String) {
        self.name = name
        self.rating = rating
        self.startTime = startTime
    }
    func showInfo() {
        print("The act is called \(name) and starts at \(startTime). It is given an average rating of \(rating)")
    }
}
