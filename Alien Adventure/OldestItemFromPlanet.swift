//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var oldestCarbonItem: UDItem?
        var oldestAge = 0
        
        for uditem in inventory {
            let historicalData = uditem.historicalData
            if let originPlanet = historicalData["PlanetOfOrigin"] as? String where originPlanet == planet {
                    // check the carbonAge
                if let age = historicalData["CarbonAge"] as? Int where age > oldestAge {
                    oldestAge = age
                    oldestCarbonItem = uditem
                }
            }
            
        }
        
        return oldestCarbonItem
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"