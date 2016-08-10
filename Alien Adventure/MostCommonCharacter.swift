//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation
extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var commonChar: Character?
        var dict = [Character: Int]()
        var highestCount = 0
        
        for uditem in inventory {
            for c in Array(uditem.name.lowercaseString.characters) {
                if let containsKey = dict[c] {
                    // add one
                    let tmp = containsKey
                    dict[c] = tmp + 1
                    
                    // compare the highest count and assgin the common char
                    let curr = dict[c]
                    if  curr > highestCount {
                        highestCount = curr!
                        commonChar = c
                    }
                } else {
                    dict[c] = 0
                }
            }
        }
        
        return commonChar
    }
}
