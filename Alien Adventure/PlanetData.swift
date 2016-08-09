//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        var resultPlanet = ""
        var highestPoint = 0
        
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let fileData = NSData(contentsOfURL: dataFileURL)!
        var arrayFromJson: [[String: AnyObject]]
        do {
            arrayFromJson = try! NSJSONSerialization.JSONObjectWithData(fileData, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }
        
        for item in arrayFromJson {
            var totalPoint = 0
            if let common = item["CommonItemsDetected"] as? Int {
                totalPoint += common
            }
            if let uncommon = item["UncommonItemsDetected"] as? Int {
                totalPoint += uncommon * 2
            }
            if let rare = item["RareItemsDetected"] as? Int {
                totalPoint += rare * 3
            }
            if let legendary = item["LegendaryItemsDetected"] as? Int {
                totalPoint += legendary * 4
            }
            if totalPoint > highestPoint {
                highestPoint = totalPoint
                resultPlanet = item["Name"] as! String
            }
        }

        return resultPlanet
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"