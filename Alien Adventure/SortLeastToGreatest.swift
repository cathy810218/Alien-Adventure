//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {
        let newInventory = inventory.sort { (item0, item1) -> Bool in
            if item0.rarity.rawValue != item1.rarity.rawValue {
                return item0.rarity.rawValue < item1.rarity.rawValue
            } else {
                // equal. Check its base value
                return item0.baseValue < item1.baseValue
            }
        }
        return newInventory
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"