//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var longestNameCount = 0
        var longestName = String()
        var reversedName = [Character]()
        
        for uditem in inventory {
            let currCount = uditem.name.characters.count
            if currCount > longestNameCount {
                longestNameCount = currCount
                longestName = uditem.name
            }
        }
        
        for c in longestName.characters {
            reversedName.insert(c, atIndex: 0)
        }
        
        return String(reversedName)
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"