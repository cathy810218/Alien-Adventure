//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        var leastValue = inventory.first?.baseValue
        var resultUditem: UDItem!
        
        if inventory.count == 0 {
            return nil
        }
        
        for uditem in inventory {
            if leastValue > uditem.baseValue {
                leastValue = uditem.baseValue
                resultUditem = uditem
            }
        }
        return resultUditem
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"