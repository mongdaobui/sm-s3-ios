//
//  main.swift
//  Hellglow world
//
//  Created by Dao Bui on 03/03/16.
//  Copyright © 2016 Dao Bui. All rights reserved.
//

import Foundation


var blueLightAct = GlowAct(name: "The Bluelight act", rating: 8, startTime: "22:20")
var secondAct = GlowAct(name: "The Second act", rating: 10, startTime: "23:00")

var Eindhoven = City(name: "Eindhoven", population: 220000)
Eindhoven.glowActs.append(blueLightAct)
Eindhoven.glowActs.append(secondAct)

Eindhoven.showInfo()