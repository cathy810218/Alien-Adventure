//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        var bannedItemID = [Int]()
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let itemArray = NSArray(contentsOfURL: dataFileURL) as! [[String:AnyObject]]
        
        for item in itemArray {
            if let name = item["Name"] as? String, histData = item["HistoricalData"] as? [String:AnyObject],
                   itemID = item["ItemID"] as? Int {
                if name.lowercaseString.containsString("laser") {
                    if let age = histData["CarbonAge"] as? Int where age < 30 {
                       bannedItemID.append(itemID)
                    }
                }
            }
        }
        return bannedItemID
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"