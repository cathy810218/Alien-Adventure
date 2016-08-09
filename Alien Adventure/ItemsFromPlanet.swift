//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        var resultItem = [UDItem]()

        for uditem in inventory {
            // each item is a dictionary
            let historicalData = uditem.historicalData
            if let originPlanet = historicalData["PlanetOfOrigin"] as? String where originPlanet == planet {
                resultItem.append(uditem)
            }
        }
        return resultItem
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"