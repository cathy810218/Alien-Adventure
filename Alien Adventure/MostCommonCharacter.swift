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
        var countArray = [Int]()
        var count = 0
        
        for uditem in inventory {
            for c in Array(uditem.name.lowercaseString.characters) {
                
            }
        }
        
        return commonChar
    }
}
