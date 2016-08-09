//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var result = [UDItemRarity.Common: 0, .Uncommon: 0, .Rare: 0, .Legendary: 0]
        
        for uditem in inventory {
            switch uditem.rarity {
            case .Common:
                result[.Common] = result[.Common]! + 1
            case .Uncommon:
                result[.Uncommon] = result[.Uncommon]! + 1
            case .Rare:
                result[.Rare] = result[.Rare]! + 1
            case .Legendary: 
                result[.Legendary] = result[.Legendary]! + 1
            }
        }
        
        return result
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"