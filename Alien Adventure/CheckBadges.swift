//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var badgeTypeArray = [UDRequestType]()
        
        for badge in badges {
            badgeTypeArray.append(badge.requestType)
        }
        
        for type in requestTypes {
            if !badgeTypeArray.contains(type) {
                return false
            }
        }
        return true
    }
    
}
