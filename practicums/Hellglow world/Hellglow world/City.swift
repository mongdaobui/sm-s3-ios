//
//  City.swift
//  Hellglow world
//
//  Created by Dao Bui on 03/03/16.
//  Copyright © 2016 Dao Bui. All rights reserved.
//

import Foundation

class City {
    var name: String
    var population: Int
    var glowActs: [GlowAct]
    
    init(name:String, population:Int){
        self.name = name
        self.population = population
        self.glowActs = [GlowAct]()
    }
    
    func showInfo() {
        print("In the city of \(name) there are currently living \(population) people.")
        
        for act in glowActs {
            act.showInfo()
        }
    }
}
