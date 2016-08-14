//
//  BoostItemValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func boostItemValue(inventory: [UDItem]) -> [UDItem] {
        let newInventory = inventory.map { (item) -> UDItem in
            return UDItem.init(itemID: item.itemID, itemType: item.itemType, name: item.name, baseValue: item.baseValue + 100, rarity: item.rarity, historicalData: item.historicalData)
        }
        return newInventory
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"